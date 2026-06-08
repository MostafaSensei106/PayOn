import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/validator/password.dart';
import '../../../../core/utils/validator/user_name.dart';

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
    @Default(UserName.pure()) UserName userName,
    @Default(Password.pure()) Password password,
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
