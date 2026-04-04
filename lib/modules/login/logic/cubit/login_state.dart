import 'package:freezed_annotation/freezed_annotation.dart';

import 'login_form_state.dart';

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
