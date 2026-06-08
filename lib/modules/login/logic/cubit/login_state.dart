import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/validator/login/login_validation.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial(LoginFormState form) = _Initial;
  const factory LoginState.loading(LoginFormState form) = Loading;
  const factory LoginState.success(LoginFormState form, {required T data}) =
      Success<T>;
  const factory LoginState.failure(
    LoginFormState form, {
    required String error,
  }) = Failure;
}

@freezed
sealed class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(LoginPhoneValidator.pure()) LoginPhoneValidator userName,
    @Default(LoginPasswordValidator.pure()) LoginPasswordValidator password,
    @Default(false) bool isValid,
    @Default(false) bool isBiometricsAvailable,
    @Default(false) bool isRememberMe,
  }) = _LoginFormState;
}

extension LoginStateX on LoginState {
  LoginFormState get formState => when(
    initial: (f) => f,
    loading: (f) => f,
    success: (f, _) => f,
    failure: (f, _) => f,
  );
}
