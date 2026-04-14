import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/register/register_response_body.dart';
import '../../data/models/send_otp/send_otp_response_body.dart';
import '../../data/models/verify_otp/verify_otp_response_body.dart';
import 'register_form_state.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState.initial(RegisterFormState form) = _Initial;

  const factory RegisterState.accountTypesLoading(RegisterFormState form) =
      AccountTypesLoading;
  const factory RegisterState.accountTypesSuccess(RegisterFormState form) =
      AccountTypesSuccess;
  const factory RegisterState.accountTypesFailure(
    RegisterFormState form, {
    required String error,
  }) = AccountTypesFailure;

  const factory RegisterState.registerLoading(RegisterFormState form) =
      RegisterLoading;
  const factory RegisterState.registerSuccess(
    RegisterFormState form, {
    required RegisterResponseBody data,
  }) = RegisterSuccess;
  const factory RegisterState.registerFailure(
    RegisterFormState form, {
    required String error,
  }) = RegisterFailure;

  /// otp
  const factory RegisterState.sendOTPLoading(RegisterFormState form) =
      SendOTPLoading;
  const factory RegisterState.sendOTPSuccess(
    RegisterFormState form, {
    required SendOtpResponseBody data,
  }) = SendOTPSuccess;
  const factory RegisterState.sendOTPFailure(
    RegisterFormState form, {
    required String error,
  }) = Failure;

  const factory RegisterState.verifyOTPLoading(RegisterFormState form) =
      VerifyOTPLoading;

  const factory RegisterState.verifyOTPSuccess(
    RegisterFormState form, {
    required VerifyOtpResponseBody data,
  }) = VerifyOTPSuccess;

  const factory RegisterState.verifyOTPFailure(
    RegisterFormState form, {
    required String error,
  }) = VerifyOTPFailure;
}
