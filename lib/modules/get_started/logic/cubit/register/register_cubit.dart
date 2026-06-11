import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/constants/types/type_def.dart';
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

  void accountTypeOnChanged(AccountTypeItem? accountType) {
    final updatedForm = currentForm.copyWith(accountType: accountType);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void firstNameOnChanged(String value) {
    final name = FullName.dirty(value);
    final updatedForm = currentForm.copyWith(name: name);
    emit(
      RegisterState.initial(
        updatedForm.copyWith(isValid: _validate(updatedForm)),
      ),
    );
  }

  void lastNameOnChanged(String value) {
    final name = FullName.dirty(value);
    final updatedForm = currentForm.copyWith(name: name);
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
          form.name,
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

    final response = await _registerRepository.createAccount(body);
    response.when(
      success: (r) => emit(RegisterState.success(currentForm, data: r)),
      failure: (e) =>
          emit(RegisterState.failure(currentForm, error: e.message)),
    );
  }

  Future<void> getRequiredFiles() async {
    emit(RegisterState.loading(currentForm));
    final response = await _registerRepository.getRequiredFiles();
    response.when(
      success: (r) => emit(RegisterState.success(currentForm, data: r.data)),
      failure: (e) =>
          emit(RegisterState.failure(currentForm, error: e.message)),
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
