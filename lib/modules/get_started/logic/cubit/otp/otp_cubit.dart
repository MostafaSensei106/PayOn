import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/result/result.dart';
import '../../../data/models/send_otp/send_otp_request_body.dart';
import '../../../data/models/verify_otp/verify_otp_request_body.dart';
import '../../use_cases/send_otp_use_case.dart';
import '../../use_cases/verify_otp_use_case.dart';
import '../register/register_state.dart';
import 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._sendOtpUseCase, this._verifyOtpUseCase)
    : super(const OtpState.initial(RegisterFormState()));

  final SendOtpUseCase _sendOtpUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;

  RegisterFormState get currentForm => state.form;

  Future<void> sendOTP() async {
    emit(OtpState.loading(currentForm));
    final body = SendOtpRequestBody(
      email: currentForm.email.value,
      emailLang: currentForm.lang,
      isForgotPassword: currentForm.isForgotPassword,
    );
    final result = await _sendOtpUseCase(body);
    result.fold(
      onSuccess: (data) => emit(OtpState.success(currentForm, data: data)),
      onFailure: (error) =>
          emit(OtpState.failure(currentForm, error: error.message)),
    );
  }

  Future<void> verifyOTP(String otp) async {
    emit(OtpState.loading(currentForm));
    final body = VerifyOtpRequestBody(
      email: currentForm.email.value,
      code: currentForm.code,
    );
    final result = await _verifyOtpUseCase(body);
    result.fold(
      onSuccess: (data) => emit(OtpState.success(currentForm, data: data)),
      onFailure: (error) =>
          emit(OtpState.failure(currentForm, error: error.message)),
    );
  }
}
