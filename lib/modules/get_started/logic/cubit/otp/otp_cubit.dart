import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/result/result.dart';
import '../../../../../core/utils/validator/phone_number.dart';
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

  Future<void> sendOTP({String? phone, String? lang, bool? isForgotPassword}) async {
    final updatedForm = currentForm.copyWith(
      phoneNumber: phone != null ? PhoneNumber.dirty(phone) : currentForm.phoneNumber,
      lang: lang ?? currentForm.lang,
      isForgotPassword: isForgotPassword ?? currentForm.isForgotPassword,
    );
    emit(OtpState.loading(updatedForm));
    final body = SendOtpRequestBody(
      phone: updatedForm.phoneNumber.value,
      emailLang: updatedForm.lang,
      isForgotPassword: updatedForm.isForgotPassword,
    );
    final result = await _sendOtpUseCase(body);
    result.fold(
      onSuccess: (data) => emit(OtpState.success(updatedForm, data: data)),
      onFailure: (error) =>
          emit(OtpState.failure(updatedForm, error: error.message)),
    );
  }

  Future<void> verifyOTP(String otp, {String? phone}) async {
    final updatedForm = currentForm.copyWith(
      phoneNumber: phone != null ? PhoneNumber.dirty(phone) : currentForm.phoneNumber,
      code: otp,
    );
    emit(OtpState.loading(updatedForm));
    final body = VerifyOtpRequestBody(
      email: updatedForm.phoneNumber.value,
      code: updatedForm.code,
    );
    final result = await _verifyOtpUseCase(body);
    result.fold(
      onSuccess: (data) => emit(OtpState.success(updatedForm, data: data)),
      onFailure: (error) =>
          emit(OtpState.failure(updatedForm, error: error.message)),
    );
  }
}
