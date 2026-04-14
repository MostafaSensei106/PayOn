import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/networking/api_result/api_result.dart';
import '../../../data/models/register/register_request_body.dart';
import '../../../data/repositories/register/base_register_repository.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepository)
    : super(const RegisterState.initial(RegisterFormState()));

  final BaseRegisterRepository _registerRepository;

  RegisterFormState get currentForm => state.form;

  Future<void> register() async {
    if (!currentForm.isValid) return;
    emit(RegisterState.loading(currentForm));
    final body = RegisterRequestBody(
      email: currentForm.email,
      phoneNumber: currentForm.phoneNumber,
      name: currentForm.name,
      birthDate: currentForm.birthDate,
      gender: currentForm.gender.code,
      password: currentForm.password,
      isPhone: currentForm.isPhone,
      nationalityCode: currentForm.nationalityCode,
      country: currentForm.country,
      cityId: currentForm.cityId,
    );

    final response = await _registerRepository.register(body);
    response.when(
      success: (r) => emit(RegisterState.success(currentForm, data: r)),
      failure: (e) => emit(
        RegisterState.failure(
          currentForm,
          error: e.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }
}
