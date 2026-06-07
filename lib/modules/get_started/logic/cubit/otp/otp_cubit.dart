import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../data/models/send_otp/send_otp_request_body.dart';
import '../../../data/models/verify_otp/verify_otp_request_body.dart';
import '../../../data/repositories/otp/base_otp_repository.dart';
import '../register/register_state.dart';
import 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._otpRepository)
    : super(const OtpState.initial(RegisterFormState()));

  final BaseOtpRepository _otpRepository;

  RegisterFormState get currentForm => state.form;

  Future<void> sendOTP() async {
    emit(OtpState.loading(currentForm));
    final body = SendOtpRequestBody(
      email: currentForm.email.value,
      emailLang: currentForm.lang,
      isForgotPassword: currentForm.isForgotPassword,
    );
    final response = await _otpRepository.sendOTP(body);
    response.when(
      success: (r) => emit(OtpState.success(currentForm, data: r)),
      failure: (e) => emit(
        OtpState.failure(
          currentForm,
          error: e.message,
        ),
      ),
    );
  }

  Future<void> verifyOTP(String otp) async {
    emit(OtpState.loading(currentForm));
    final body = VerifyOtpRequestBody(
      email: currentForm.email.value,
      code: currentForm.code,
    );
    final response = await _otpRepository.verifyOTP(body);
    response.when(
      success: (r) => emit(OtpState.success(currentForm, data: r)),
      failure: (e) => emit(
        OtpState.failure(
          currentForm,
          error: e.message,
        ),
      ),
    );
  }
}
