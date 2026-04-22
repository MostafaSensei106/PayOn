import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/networking/api_result/api_result.dart';
import '../../../../../core/validator/email_validators.dart';
import '../../../../../core/validator/password.dart';
import '../../../../../core/validator/phone_number.dart';
import '../../../../../core/validator/user_name.dart';
import '../../../data/models/account_type/account_type_item.dart';
import '../../../data/models/register/register_request_body.dart';
import '../../../data/repositories/register/base_register_repository.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepository)
    : super(const RegisterState.initial(RegisterFormState()));

  final BaseRegisterRepository _registerRepository;

  RegisterFormState get currentForm => state.form;

  void accountTypeOnChanged(AccountTypeItem? accountType) {
    final updatedForm = currentForm.copyWith(accountType: accountType);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void firstNameOnChanged(String value) {
    final firstName = UserName.dirty(value);
    final fullName = '$value ${currentForm.lastName.value}'.trim();
    final name = UserName.dirty(fullName);

    final updatedForm = currentForm.copyWith(firstName: firstName, name: name);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void lastNameOnChanged(String value) {
    final lastName = UserName.dirty(value);
    final fullName = '${currentForm.firstName.value} $value'.trim();
    final name = UserName.dirty(fullName);

    final updatedForm = currentForm.copyWith(lastName: lastName, name: name);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void emailOnChanged(String value) {
    final email = Email.dirty(value);
    final updatedForm = currentForm.copyWith(email: email);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void phoneNumberOnChanged(String value) {
    final phoneNumber = PhoneNumber.dirty(value);
    final updatedForm = currentForm.copyWith(phoneNumber: phoneNumber);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void passwordOnChanged(String value) {
    final password = Password.dirty(value);
    final updatedForm = currentForm.copyWith(password: password);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void confirmPasswordOnChanged(String value) {
    final confirmPassword = Password.dirty(value);
    final updatedForm = currentForm.copyWith(confirmPassword: confirmPassword);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void birthDateOnChanged(String birthDate) {
    final updatedForm = currentForm.copyWith(birthDate: birthDate);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void genderOnChanged(GenderType gender) {
    final updatedForm = currentForm.copyWith(gender: gender);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void nationalityOnChanged(String nationalityCode) {
    final updatedForm = currentForm.copyWith(nationalityCode: nationalityCode);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void cityIdOnChanged(String cityId) {
    final updatedForm = currentForm.copyWith(cityId: cityId);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void idFileOnChanged(File? file) {
    final updatedForm = currentForm.copyWith(idFile: file);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void addressFileOnChanged(File? file) {
    final updatedForm = currentForm.copyWith(addressFile: file);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  bool _validate(RegisterFormState form) {
    return Formz.validate([
          form.firstName,
          form.lastName,
          form.email,
          form.phoneNumber,
          form.password,
          form.confirmPassword,
        ]) &&
        form.password.value == form.confirmPassword.value &&
        form.accountType != null;
  }

  Future<void> register() async {
    if (!currentForm.isValid) return;
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

    final response = await _registerRepository.register(body);
    response.when(
      success: (r) async {
        emit(RegisterState.success(currentForm, data: r));
      },
      failure: (e) => emit(
        RegisterState.failure(
          currentForm,
          error: e.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }

  Future<void> uploadKYCFiles(String accId) async {
    if (currentForm.idFile != null) {
      await _registerRepository.uploadFiles(
        file: currentForm.idFile!,
        accId: accId,
        requiredDocId: 1,
      );
    }
    if (currentForm.addressFile != null) {
      await _registerRepository.uploadFiles(
        file: currentForm.addressFile!,
        accId: accId,
        requiredDocId: 2,
      );
    }
  }
}
