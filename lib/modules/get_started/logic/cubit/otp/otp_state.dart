import 'package:freezed_annotation/freezed_annotation.dart';

import '../register/register_state.dart';

part 'otp_state.freezed.dart';

@freezed
sealed class OtpState<T> with _$OtpState<T> {
  const factory OtpState.initial(RegisterFormState form) = _Initial;
  const factory OtpState.loading(RegisterFormState form) = Loading;
  const factory OtpState.success(RegisterFormState form, {required T data}) =
      Success<T>;
  const factory OtpState.failure(
    RegisterFormState form, {
    required String error,
  }) = Failure;
}
