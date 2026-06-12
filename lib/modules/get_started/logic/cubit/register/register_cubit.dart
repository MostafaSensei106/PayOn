import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/utils/result/result.dart';
import '../../../../../core/utils/validator/email_validators.dart';
import '../../../../../core/utils/validator/full_name.dart';
import '../../../../../core/utils/validator/password.dart';
import '../../../../../core/utils/validator/phone_number.dart';
import '../../../data/models/account_type/account_type_item.dart';
import '../../../data/models/register/create_account_request_body.dart';
import '../../../data/models/register/register_request_body.dart';
import '../../../data/repositories/register/base_register_repository.dart';
import 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepository)
    : super(const RegisterState.initial(RegisterFormState()));

  final BaseRegisterRepository _registerRepository;

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

  void accountTypeOnChanged(AccountTypeItem? accountType) {
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

  void cityIdOnChanged(String cityId) {
    final updatedForm = currentForm.copyWith(cityId: cityId);
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
            form.country.isNotEmpty &&
            form.cityId.isNotEmpty;
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

    final result = await _registerRepository.register(body);
    result.when(
      success: (r) => emit(RegisterState.registerSuccess(currentForm, data: r)),
      failure: (e) =>
          emit(RegisterState.failure(currentForm, error: e.message)),
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

    final result = await _registerRepository.createAccount(body);
    result.fold(
      onSuccess: (r) =>
          emit(RegisterState.createAccountSuccess(currentForm, data: r)),
      onFailure: (e) =>
          emit(RegisterState.failure(currentForm, error: e.message)),
    );
  }

  Future<void> getRequiredFiles() async {
    emit(RegisterState.loading(currentForm));
    final result = await _registerRepository.getRequiredFiles();
    result.fold(
      onSuccess: (r) => emit(
        RegisterState.getRequiredFilesSuccess(currentForm, files: r.data),
      ),
      onFailure: (e) =>
          emit(RegisterState.failure(currentForm, error: e.message)),
    );
  }

  Future<void> uploadKYCFiles(String accId) async {
    emit(RegisterState.loading(currentForm));
    for (final entry in currentForm.files.entries) {
      await _registerRepository.uploadFiles(
        file: entry.value,
        accId: accId,
        requiredDocId: entry.key,
      );
    }
    emit(RegisterState.initial(currentForm));
  }
}
