import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/validator/email_validators.dart';
import '../../../../core/validator/password.dart';
import '../../../../core/validator/phone_number.dart';
import '../../../../core/validator/user_name.dart';
import '../../data/models/account_type/account_type_response_body.dart';

part 'register_form_state.freezed.dart';

@freezed
sealed class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @Default(Email.pure()) String email,
    @Default(UserName.pure()) String name,
    @Default(PhoneNumber.pure()) String phoneNumber,
    @Default(Password.pure()) String password,
    @Default('EG') String nationalityCode,
    @Default(false) bool isPhone,
    @Default('') String birthData,
    @Default('N') String gender,
    @Default('EGY') String country,
    @Default('') String cityId,

    @Default('EN') String language,
    @Default(false) bool isForgotPassword,

    @Default('') String code,
    @Default([]) List<AccountTypeResponseBody> accountTypes,
    @Default(false) bool isValid,
  }) = _RegisterFormState;
}
