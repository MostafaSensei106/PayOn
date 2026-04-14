import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/validator/email_validators.dart';
import '../../../../../core/validator/password.dart';
import '../../../../../core/validator/phone_number.dart';
import '../../../../../core/validator/user_name.dart';
import '../../../data/models/account_type/account_type_item.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial(RegisterFormState form) = _Initial;
  const factory RegisterState.loading(RegisterFormState form) = Loading;
  const factory RegisterState.success(
    RegisterFormState form, {
    required T data,
  }) = Success<T>;
  const factory RegisterState.failure(
    RegisterFormState form, {
    required String error,
  }) = Failure;
}

@freezed
sealed class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @Default(UserName.pure()) UserName name,
    @Default(UserName.pure()) UserName firstName,
    @Default(UserName.pure()) UserName lastName,
    @Default(Email.pure()) Email email,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password confirmPassword,
    @Default('') String birthDate,
    @Default(GenderType.none) GenderType gender,
    @Default(null) AccountTypeItem? accountType,
    @Default(null) File? idFile,
    @Default(null) File? addressFile,

    @Default(false) bool isForgotPassword,
    @Default('en') String lang,
    @Default('') String code,

    @Default(true) bool isPhone,

    @Default('') String nationalityCode,
    @Default('') String country,
    @Default('') String cityId,

    @Default(false) bool isValid,
  }) = _RegisterFormState;
}
