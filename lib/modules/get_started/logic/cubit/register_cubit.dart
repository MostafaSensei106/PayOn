import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../data/models/register/register_request_body.dart';
import '../../data/models/send_otp/send_otp_request_body.dart';
import '../../data/models/verify_otp/verify_otp_request_body.dart';
import '../../data/repositories/base_register_repository.dart';
import 'register_form_state.dart';
import 'register_state.dart';

final class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepository)
    : super(const RegisterState.initial(RegisterFormState()));

  final BaseRegisterRepository _registerRepository;

  RegisterFormState get currentForm => state.form;

  Future<void> getAccountTypes() async {
    emit(RegisterState.accountTypesLoading(currentForm));
    final response = await _registerRepository.getAccountTypes();
    response.when(
      success: (r) async {
        final updatedForm = currentForm.copyWith(accountTypes: [r]);
        emit(RegisterState.accountTypesSuccess(updatedForm));
      },
      failure: (err) => emit(
        RegisterState.accountTypesFailure(
          currentForm,
          error: err.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }

  Future<void> register() async {
    if (!currentForm.isValid) return;
    emit(RegisterState.registerLoading(currentForm));
    final body = RegisterRequestBody(
      email: currentForm.email,
      phoneNumber: currentForm.phoneNumber,
      name: currentForm.name,
      birthDate: currentForm.birthData,
      gender: currentForm.gender,
      password: currentForm.password,
      isPhone: currentForm.isPhone,
      nationalityCode: currentForm.nationalityCode,
      country: currentForm.country,
      cityId: currentForm.cityId,
    );
    final response = await _registerRepository.register(body);
    response.when(
      success: (r) => emit(RegisterState.registerSuccess(currentForm, data: r)),
      failure: (err) => emit(
        RegisterState.registerFailure(
          currentForm,
          error: err.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }

  Future<void> sendOTP() async {
    if (!currentForm.isValid) return;
    emit(RegisterState.sendOTPLoading(currentForm));
    final body = SendOtpRequestBody(
      email: currentForm.email,
      emailLang: currentForm.language,
      isForgotPassword: currentForm.isForgotPassword,
    );
    final response = await _registerRepository.sendOTP(body);
    response.when(
      success: (r) => emit(RegisterState.sendOTPSuccess(currentForm, data: r)),
      failure: (err) => emit(
        RegisterState.sendOTPFailure(
          currentForm,
          error: err.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }

  Future<void> verifyOTP() async {
    emit(RegisterState.verifyOTPLoading(currentForm));
    final body = VerifyOtpRequestBody(
      email: currentForm.email,
      code: currentForm.code,
    );
    final response = await _registerRepository.verifyOTP(body);
    response.when(
      success: (r) =>
          emit(RegisterState.verifyOTPSuccess(currentForm, data: r)),
      failure: (err) => emit(
        RegisterState.verifyOTPFailure(
          currentForm,
          error: err.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }
}
