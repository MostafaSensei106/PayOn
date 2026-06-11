import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/utils/validator/email_validators.dart';
import '../../../../../core/utils/validator/full_name.dart';
import '../../../../../core/utils/validator/password.dart';
import '../../../../../core/utils/validator/phone_number.dart';
import '../../../data/models/account_type/account_type_item.dart';
import '../../../data/models/register/register_response_body.dart';
import '../../../data/models/register/create_account_response_body.dart';
import '../../../data/models/required_files/get_required_files_response_body.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState.initial(RegisterFormState form) = _Initial;
  const factory RegisterState.loading(RegisterFormState form) = Loading;
  const factory RegisterState.registerSuccess(
    RegisterFormState form, {
    required RegisterResponseBody data,
  }) = _RegisterSuccess;
  const factory RegisterState.createAccountSuccess(
    RegisterFormState form, {
    required CreateAccountResponseBody data,
  }) = _CreateAccountSuccess;
  const factory RegisterState.getRequiredFilesSuccess(
    RegisterFormState form, {
    required List<RequiredFileModel> files,
  }) = _GetRequiredFilesSuccess;
  const factory RegisterState.failure(
    RegisterFormState form, {
    required String error,
  }) = Failure;
}

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @Default(FullName.pure()) FullName name,
    @Default(Email.pure()) Email email,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password confirmPassword,
    @Default('') String birthDate,
    @Default(GenderType.none) GenderType gender,
    @Default(null) AccountTypeItem? accountType,
    @Default({}) Map<int, File> files,

    @Default(false) bool isForgotPassword,
    @Default('en') String lang,
    @Default('') String code,

    @Default(true) bool isPhone,

    @Default('') String nationalityCode,
    @Default('') String country,
    @Default('') String cityId,

    @Default(0) int currentStep,
    @Default(false) bool isValid,
  }) = _RegisterFormState;
}
