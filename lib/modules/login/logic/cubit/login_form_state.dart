import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/validator/password.dart';
import '../../../../core/validator/user_name.dart';
part 'login_form_state.freezed.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(UserName.pure()) UserName userName,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
    @Default(false) bool isBiometricsAvailable,
  }) = _LoginFormState;
}
