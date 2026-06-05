import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/validator/password.dart';
import '../../../../core/utils/validator/user_name.dart';
part 'login_form_state.freezed.dart';

@freezed
sealed class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(UserName.pure()) UserName userName,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
    @Default(false) bool isBiometricsAvailable,
    @Default(false) bool isRememberMe,
  }) = _LoginFormState;
}
