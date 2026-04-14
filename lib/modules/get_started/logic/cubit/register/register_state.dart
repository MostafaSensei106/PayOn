import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/validator/user_name.dart';
import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/validator/email_validators.dart';
import '../../../../../core/validator/password.dart';
import '../../../../../core/validator/phone_number.dart';

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
    @Default(UserName.pure()) String name,
    @Default(Email.pure()) String email,
    @Default(PhoneNumber.pure()) String phoneNumber,
    @Default(Password.pure()) String password,
    @Default('') String birthDate,
    @Default(GenderType.none) GenderType gender,

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
