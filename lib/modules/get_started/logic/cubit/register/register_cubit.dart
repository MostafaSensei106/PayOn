import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/utils/result/result.dart';
import '../../../../../core/utils/use_case/base_use_case.dart';
import '../../../../../core/utils/validator/email_validators.dart';

import '../../../../../core/utils/validator/full_name.dart';
import '../../../../../core/utils/validator/password.dart';
import '../../../../../core/utils/validator/phone_number.dart';
import '../../../data/models/register/create_account_request_body.dart';
import '../../../data/models/register/register_request_body.dart';
import '../../entities/account_type_entity.dart';
import '../../use_cases/create_account_use_case.dart';
import '../../use_cases/get_required_files_use_case.dart';
import '../../use_cases/register_use_case.dart';
import '../../use_cases/upload_kyc_files_use_case.dart';
import 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
    this._registerUseCase,
    this._createAccountUseCase,
    this._getRequiredFilesUseCase,
    this._uploadKycFilesUseCase,
  ) : super(const RegisterState.initial(RegisterFormState()));

  final RegisterUseCase _registerUseCase;
  final CreateAccountUseCase _createAccountUseCase;
  final GetRequiredFilesUseCase _getRequiredFilesUseCase;
  final UploadKycFilesUseCase _uploadKycFilesUseCase;

  RegisterFormState get currentForm => state.form;

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

  void updateFile(int docId, File file) {
    final updatedFiles = Map<int, File>.from(currentForm.files)..[docId] = file;
    final updatedForm = currentForm.copyWith(files: updatedFiles);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm, step: 3)),
      ),
    );
  }

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
            form.country.isNotEmpty;
      case 2: // OTP
        return true;
      case 3: // Documents
        return form.files.isNotEmpty;
      default:
        return false;
    }
  }

  Future<void> register() async {
    if (!_validate(currentForm, step: 1)) return;
    emit(RegisterState.loading(currentForm));
    final body = RegisterRequestBody(
      email: currentForm.email.value,
      phoneNumber: currentForm.phoneNumber.value,
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
      onSuccess: (data) =>
          emit(RegisterState.registerSuccess(currentForm, data: data)),
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  Future<void> createAccount({
    double? latitude,
    double? longitude,
    int? categoryId,
  }) async {
    final accountTypeId = currentForm.accountType?.id;
    if (accountTypeId == null) return;

    emit(RegisterState.loading(currentForm));

    final body = CreateAccountRequestBody(
      accountTypeId: accountTypeId,
      latitude: accountTypeId == 1 ? null : latitude,
      longitude: accountTypeId == 1 ? null : longitude,
      categoryId: categoryId,
    );

    final result = await _createAccountUseCase(body);
    result.fold(
      onSuccess: (data) =>
          emit(RegisterState.createAccountSuccess(currentForm, data: data)),
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }

  Future<void> getRequiredFiles() async {
    emit(RegisterState.loading(currentForm));
    final result = await _getRequiredFilesUseCase(const NoParams());
    result.fold(
      onSuccess: (data) =>
          emit(RegisterState.getRequiredFilesSuccess(currentForm, files: data)),
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
      onSuccess: (_) => emit(RegisterState.initial(currentForm)),
      onFailure: (error) =>
          emit(RegisterState.failure(currentForm, error: error.message)),
    );
  }
}
