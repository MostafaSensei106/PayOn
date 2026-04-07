import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/services/biometrics/base_biometrics_service.dart';
import '../../../../core/validator/password.dart';
import '../../../../core/validator/user_name.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_response.dart';
import '../../data/repositories/base_login_repository.dart';
import 'login_form_state.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState<LoginResponse>> {
  LoginCubit(this._loginRepository, this._biometricsService)
    : super(const LoginState<LoginResponse>.initial(LoginFormState())) {
    unawaited(_checkBiometricsAvailability());
  }

  final BaseLoginRepository _loginRepository;
  final BaseBiometricsService _biometricsService;

  LoginFormState get currentForm => state.form;

  Future<void> _checkBiometricsAvailability() async {
    final isAvailable = await _biometricsService.isBiometricsAvailable();
    emit(
      LoginState.initial(
        currentForm.copyWith(isBiometricsAvailable: isAvailable),
      ),
    );
  }

  Future<void> login() async {
    if (!currentForm.isValid) return;
    emit(LoginState.loading(currentForm));
    final body = LoginRequestBody(
      userName: currentForm.userName.value,
      password: currentForm.password.value,
    );
    final response = await _loginRepository.login(body);
    response.when(
      success: (r) => emit(LoginState.success(currentForm, data: r)),
      failure: (err) => emit(
        LoginState.failure(
          currentForm,
          error: err.failure.message ?? 'Unknown Error',
        ),
      ),
    );
  }

  Future<bool> loginWithBiometrics() async {
    if (!await _biometricsService.isBiometricsAvailable()) return false;
    final isAuthenticated = await _biometricsService.authenticate(
      message: 'Scan your fingerprint to login',
    );
    return isAuthenticated;
  }

  void userNameOnChanged(String value) {
    final userName = UserName.dirty(value);
    final updatedForm = currentForm.copyWith(
      userName: userName,
      isValid: Formz.validate([userName, currentForm.password]),
    );
    emit(LoginState.initial(updatedForm));
  }

  void passwordOnChanged(String value) {
    final password = Password.dirty(value);
    final updatedForm = currentForm.copyWith(
      password: password,
      isValid: Formz.validate([password, currentForm.userName]),
    );
    emit(LoginState.initial(updatedForm));
  }
}
