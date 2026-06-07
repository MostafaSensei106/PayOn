import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../core/constants/pref_keys.dart';
import '../../../../core/constants/types/type_def.dart';
import '../../../../core/services/biometrics/base_biometrics_service.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../../../core/utils/validator/password.dart';
import '../../../../core/utils/validator/user_name.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_response_body.dart';
import '../../data/repositories/base_login_repository.dart';
import 'login_form_state.dart';
import 'login_state.dart';

final class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._loginRepository,
    this._biometricsService,
    this._prefsStorageService,
  ) : super(const LoginState<LoginResponseBody>.initial(LoginFormState())) {
    unawaited(_checkBiometricsAvailability());
  }

  final BaseLoginRepository _loginRepository;
  final BaseBiometricsService _biometricsService;
  final BasePrefStorageService _prefsStorageService;

  LoginFormState get currentForm => state.form;

  Future<void> _checkBiometricsAvailability() async {
    final isSupported = await _biometricsService.isBiometricsAvailable();
    final isEnabledByUser =
        _prefsStorageService.getData<bool>(PrefKeys.isFingerprintEnabled) ??
        false;
    final shouldShowBiometricButton = isSupported && isEnabledByUser;
    emit(
      LoginState.initial(
        currentForm.copyWith(isBiometricsAvailable: shouldShowBiometricButton),
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
      success: (r) async {
        if (currentForm.isRememberMe) {
          await _prefsStorageService.setData(PrefKeys.isRememberMe, true);
        } else {
          await _prefsStorageService.setData(PrefKeys.isRememberMe, false);
        }
        emit(LoginState.success(currentForm, data: r));
      },
      failure: (err) => emit(
        LoginState.failure(
          currentForm,
          error: err.message,
        ),
      ),
    );
  }

  Future<bool> loginWithBiometrics() async {
    final isAuthenticated = await _biometricsService.authenticate(
      message: 'Scan your fingerprint to login',
    );

    if (isAuthenticated) {
      // Note: In a real scenario, you'd usually exchange a stored token
      // or call a specific biometric login endpoint here.
      // For now, we emit success if authentication passes.
      emit(LoginState.success(currentForm, data: 'Biometric login successful'));
    } else {
      emit(
        LoginState.failure(
          currentForm,
          error: 'Biometric authentication failed',
        ),
      );
    }

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

  void rememberMeOnChanged(bool? value) {
    final updatedForm = currentForm.copyWith(isRememberMe: value ?? false);
    emit(LoginState.initial(updatedForm));
  }
}
