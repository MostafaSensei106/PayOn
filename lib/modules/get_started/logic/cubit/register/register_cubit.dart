import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/constants/pref_keys.dart';
import '../../../../../core/services/hash_service/base_hash_service.dart';
import '../../../../../core/services/ocr/ocr_service.dart';
import '../../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../../../../core/utils/result/result.dart';
import '../../../../../core/utils/use_case/base_use_case.dart';
import '../../../../../core/utils/validator/email_validators.dart';
import '../../../../../core/utils/validator/full_name.dart';
import '../../../../../core/utils/validator/password.dart';
import '../../../../../core/utils/validator/phone_number.dart';
import '../../../../create_wallet/data/models/create_wallet_pin_request_body.dart';
import '../../../../create_wallet/data/models/create_wallet_request_body.dart';
import '../../../../create_wallet/logic/usecase/create_wallet_pin_usecase.dart';
import '../../../../create_wallet/logic/usecase/create_wallet_usecase.dart';
import '../../../../create_wallet/logic/usecase/get_currencies_usecase.dart';
import '../../../data/models/register/create_account_request_body.dart';
import '../../../data/models/register/register_request_body.dart';
import '../../../data/models/send_otp/send_otp_request_body.dart';
import '../../entities/account_type_entity.dart';
import '../../use_cases/create_account_use_case.dart';
import '../../use_cases/get_all_countries_use_case.dart';
import '../../use_cases/get_required_files_use_case.dart';
import '../../use_cases/params/get_required_files_params.dart';
import '../../use_cases/register_use_case.dart';
import '../../use_cases/send_otp_use_case.dart';
import '../../use_cases/upload_kyc_files_use_case.dart';
import 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
    this._registerUseCase,
    this._createAccountUseCase,
    this._getRequiredFilesUseCase,
    this._uploadKycFilesUseCase,
    this._getAllCountriesUseCase,
    this._sendOtpUseCase,
    this._ocrService,
    this._prefsStorageService,
    this._getCurrenciesUseCase,
    this._createWalletUseCase,
    this._createWalletPinUseCase,
    this._hashService,
  ) : super(const RegisterState.initial(RegisterFormState()));

  final RegisterUseCase _registerUseCase;
  final CreateAccountUseCase _createAccountUseCase;
  final GetRequiredFilesUseCase _getRequiredFilesUseCase;
  final UploadKycFilesUseCase _uploadKycFilesUseCase;
  final GetAllCountriesUseCase _getAllCountriesUseCase;
  final SendOtpUseCase _sendOtpUseCase;
  final OcrService _ocrService;
  final BasePrefStorageService _prefsStorageService;
  final GetCurrenciesUseCase _getCurrenciesUseCase;
  final CreateWalletUseCase _createWalletUseCase;
  final CreateWalletPinUseCase _createWalletPinUseCase;
  final BaseHashService _hashService;

  RegisterFormState get currentForm => state.form;

  // ─── Registration Flow ────────────────────────────────────────────────

  Future<void> register() async {
    if (!_validate(currentForm, step: 1)) return;
    emit(RegisterState.loading(currentForm));

    final body = RegisterRequestBody(
      email: currentForm.email.value,
      phoneNumber: currentForm.formattedPhoneNumber,
      name: currentForm.name.value,
      birthDate: currentForm.birthDate,
      gender: currentForm.gender.code,
      password: currentForm.password.value,
      isPhone: currentForm.isPhone,
      nationalityCode: currentForm.nationalityCode,
      country: currentForm.country,
      cityId: currentForm.cityId,
    );

    final result = await _registerUseCase(body);
    result.fold(
      onSuccess: (data) async {
        // Save the user token immediately after registration
        await _prefsStorageService.setData(
          key: PrefKeys.userToken,
          value: data.token,
        );

        final createAccountBody = CreateAccountRequestBody(
          accountTypeId: currentForm.accountType!.id,
          address: currentForm.address,
          email: currentForm.email.value,
          name: currentForm.name.value,
          phoneNumber: currentForm.formattedPhoneNumber,
          nationalId: currentForm.nationalId,
          birthDate: currentForm.birthDate,
          latitude: currentForm.isPersonalType ? null : currentForm.latitude,
          longitude: currentForm.isPersonalType ? null : currentForm.longitude,
        );

        final createAccountResult = await _createAccountUseCase(
          createAccountBody,
        );

        await createAccountResult.fold(
          onSuccess: (createAccountData) async {
            final updatedFormWithAccId = currentForm.copyWith(
              accountId: createAccountData.accountId,
            );

            final otpBody = SendOtpRequestBody(
              phone: currentForm.formattedPhoneNumber,
              emailLang: currentForm.lang,
              isForgotPassword: false,
            );
            final otpResult = await _sendOtpUseCase(otpBody);
            otpResult.fold(
              onSuccess: (_) => emit(
                RegisterState.registerSuccess(updatedFormWithAccId, data: data),
              ),
              onFailure: (error) => emit(
                RegisterState.failure(
                  updatedFormWithAccId,
                  error: error.message,
                ),
              ),
            );
          },
          onFailure: (error) async =>
              emit(RegisterState.failure(currentForm, error: error.message)),
        );
      },
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  // ─── Countries ────────────────────────────────────────────────────────

  Future<void> getCountries() async {
    if (currentForm.countries.isNotEmpty) return;
    emit(RegisterState.loading(currentForm));
    final result = await _getAllCountriesUseCase(const NoParams());
    result.fold(
      onSuccess: (data) {
        final updatedForm = currentForm.copyWith(countries: data.items);
        emit(
          RegisterState.getCountriesSuccess(updatedForm, countries: data.items),
        );
      },
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  // ─── Required Files / KYC ─────────────────────────────────────────────

  Future<void> getRequiredFiles() async {
    final accountTypeId = currentForm.accountType?.id;
    if (accountTypeId == null) return;

    emit(RegisterState.loading(currentForm));
    final result = await _getRequiredFilesUseCase(
      GetRequiredFilesParams(accountTypeId: accountTypeId),
    );
    result.fold(
      onSuccess: (data) {
        final updatedForm = currentForm.copyWith(requiredFiles: data);
        emit(RegisterState.getRequiredFilesSuccess(updatedForm, files: data));
      },
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  Future<void> uploadKYCFiles(String accId) async {
    emit(RegisterState.loading(currentForm));
    final result = await _uploadKycFilesUseCase(
      UploadKycFilesParams(accId: accId, files: currentForm.files),
    );
    result.fold(
      onSuccess: (_) => emit(RegisterState.kycUploadSuccess(currentForm)),
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  // ─── Wallet Creation ──────────────────────────────────────────────────

  Future<void> getCurrencies() async {
    if (currentForm.walletCurrencies.isNotEmpty) return;
    emit(RegisterState.loading(currentForm));
    final result = await _getCurrenciesUseCase(const NoParams());
    result.fold(
      onSuccess: (currencies) {
        final updatedForm = currentForm.copyWith(
          walletCurrencies: currencies,
          selectedCurrencyId:
              currencies.isNotEmpty ? currencies.first.id : null,
        );
        emit(RegisterState.currenciesLoaded(updatedForm));
      },
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  Future<void> createWallet() async {
    if (currentForm.ipa.isEmpty || currentForm.selectedCurrencyId == null) {
      return;
    }
    emit(RegisterState.loading(currentForm));
    final result = await _createWalletUseCase(
      CreateWalletRequestBody(
        accountId: currentForm.accountId,
        ipa: '${currentForm.ipa}@payreb',
        currencyId: currentForm.selectedCurrencyId!,
      ),
    );
    result.fold(
      onSuccess: (_) {
        final updatedForm = currentForm.copyWith(walletStep: 1);
        emit(RegisterState.walletCreated(updatedForm));
      },
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  Future<void> createWalletPin() async {
    if (currentForm.walletPin.isEmpty) return;
    emit(RegisterState.loading(currentForm));

    final pinHash = await _hashService.hash(currentForm.walletPin);
    final result = await _createWalletPinUseCase(
      CreateWalletPinRequestBody(
        accountId: currentForm.accountId,
        pinHash: pinHash,
      ),
    );
    result.fold(
      onSuccess: (_) => emit(RegisterState.pinCreated(currentForm)),
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  // ─── Form Field Handlers ──────────────────────────────────────────────

  void setStep(int step) {
    emit(
      RegisterState.initial(
        currentForm.copyWith(
          currentStep: step,
          isValid: _validate(currentForm, step: step),
        ),
      ),
    );
  }

  void accountTypeOnChanged(AccountTypeItemEntity? accountType) {
    final updatedForm = currentForm.copyWith(accountType: accountType);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 0)),
      ),
    );
  }

  void nameOnChanged(String value) {
    final name = FullName.dirty(value);
    final updatedForm = currentForm.copyWith(name: name);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void emailOnChanged(String value) {
    final email = Email.dirty(value);
    final updatedForm = currentForm.copyWith(email: email);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void phoneNumberOnChanged(String value) {
    final phoneNumber = PhoneNumber.dirty(value);
    final updatedForm = currentForm.copyWith(phoneNumber: phoneNumber);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void passwordOnChanged(String value) {
    final password = Password.dirty(value);
    final updatedForm = currentForm.copyWith(password: password);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void confirmPasswordOnChanged(String value) {
    final confirmPassword = Password.dirty(value);
    final updatedForm = currentForm.copyWith(confirmPassword: confirmPassword);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void birthDateOnChanged(String birthDate) {
    final updatedForm = currentForm.copyWith(birthDate: birthDate);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void genderOnChanged(GenderType gender) {
    final updatedForm = currentForm.copyWith(gender: gender);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void nationalityOnChanged(String nationalityCode) {
    final updatedForm = currentForm.copyWith(nationalityCode: nationalityCode);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void countryOnChanged(String country) {
    final updatedForm = currentForm.copyWith(country: country);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void addressOnChanged(String address) {
    final updatedForm = currentForm.copyWith(address: address);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void nationalIdOnChanged(String nationalId) {
    final updatedForm = currentForm.copyWith(nationalId: nationalId);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void latitudeOnChanged(double? latitude) {
    final updatedForm = currentForm.copyWith(latitude: latitude);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void longitudeOnChanged(double? longitude) {
    final updatedForm = currentForm.copyWith(longitude: longitude);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 1)),
      ),
    );
  }

  void setIsAddWalletFlow(bool isAddWalletFlow) {
    emit(
      RegisterState.initial(
        currentForm.copyWith(isAddWalletFlow: isAddWalletFlow),
      ),
    );
  }

  void ipaOnChanged(String ipa) {
    final updatedForm = currentForm.copyWith(ipa: ipa);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 4)),
      ),
    );
  }

  void currencyOnChanged(int currencyId) {
    final updatedForm = currentForm.copyWith(selectedCurrencyId: currencyId);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 4)),
      ),
    );
  }

  void walletPinOnChanged(String pin) {
    final updatedForm = currentForm.copyWith(walletPin: pin);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 4)),
      ),
    );
  }

  // ─── OCR File Upload ──────────────────────────────────────────────────

  Future<void> updateFile(int docId, File file) async {
    emit(RegisterState.initial(currentForm.copyWith(isOcrProcessing: true)));

    try {
      final extractedText = await _ocrService.extractText(file);
      final normalizedText = extractedText.replaceAll(RegExp(r'\s+'), '');
      final targetId = currentForm.nationalId.replaceAll(RegExp(r'\s+'), '');

      if (normalizedText.isEmpty) {
        emit(
          RegisterState.failure(
            currentForm.copyWith(isOcrProcessing: false),
            error:
                'Could not read text from the image. Please take a clearer photo.',
          ),
        );
        return;
      }

      // Check if the extracted text contains the National ID
      if (targetId.isNotEmpty && !normalizedText.contains(targetId)) {
        emit(
          RegisterState.failure(
            currentForm.copyWith(isOcrProcessing: false),
            error:
                'The uploaded image does not match the National ID provided ($targetId). Please ensure the ID number is clearly visible.',
          ),
        );
        return;
      }

      final updatedFiles = Map<int, File>.from(currentForm.files)
        ..[docId] = file;
      final updatedForm = currentForm.copyWith(
        files: updatedFiles,
        isOcrProcessing: false,
      );
      emit(
        RegisterState.initial(
          updatedForm.copyWith(isValid: _validate(updatedForm, step: 3)),
        ),
      );
    } catch (e) {
      emit(
        RegisterState.failure(
          currentForm.copyWith(isOcrProcessing: false),
          error: 'OCR Processing failed: $e',
        ),
      );
    }
  }

  // ─── Validation ───────────────────────────────────────────────────────

  bool _validate(RegisterFormState form, {required int step}) {
    switch (step) {
      case 0:
        return form.accountType != null;
      case 1:
        return Formz.validate([
              form.name,
              form.email,
              form.phoneNumber,
              form.password,
              form.confirmPassword,
            ]) &&
            form.password.value == form.confirmPassword.value &&
            form.birthDate.isNotEmpty &&
            form.gender != GenderType.none &&
            form.country.isNotEmpty &&
            form.address.isNotEmpty &&
            form.nationalId.isNotEmpty;
      case 2: // OTP
        return true;
      case 3: // Documents
        return form.files.isNotEmpty;
      case 4: // Wallet
        if (form.walletStep == 0) {
          return form.ipa.isNotEmpty && form.selectedCurrencyId != null;
        } else {
          return form.walletPin.length == 6;
        }
      default:
        return false;
    }
  }
}
