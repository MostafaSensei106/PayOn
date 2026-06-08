import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/pref_keys.dart';
import '../../../../core/constants/types/type_def.dart';
import '../../../../core/services/biometrics/biometrics_service.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../../../core/utils/validator/password.dart';
import '../../../../core/utils/validator/user_name.dart';
import '../entities/login_entity.dart';
import '../entities/params/login_params.dart';
import '../usecase/login_usecase.dart';
import 'login_state.dart';

@injectable
final class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._loginUsecase,
    this._biometricsService,
    this._prefsStorageService,
  ) : super(const LoginState<LoginEntity>.initial(LoginFormState())) {
    unawaited(_checkBiometricsAvailability());
  }

  final LoginUsecase _loginUsecase;
  final BiometricsService _biometricsService;
  final BasePrefStorageService _prefsStorageService;

  LoginFormState get currentForm => state.formState;

  Future<void> _checkBiometricsAvailability() async {
    final isSupported = await _biometricsService.isBiometricsAvailable();
    final isEnabledByUser =
        await _prefsStorageService.getData<bool>(
          key: PrefKeys.isFingerprintEnabled,
        ) ??
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

    final params = LoginParams(
      userName: currentForm.userName.value,
      password: currentForm.password.value,
      isRememberMe: currentForm.isRememberMe,
    );

    final response = await _loginUsecase.call(params);

    response.when(
      success: (t) {
        emit(LoginState.success(currentForm, data: t));
      },
      failure: (e) {
        emit(LoginState.failure(currentForm, error: e.message));
      },
    );
  }

  Future<bool> loginWithBiometrics() async {
    final isAuthenticated = await _biometricsService.authenticate(
      message: 'Scan your fingerprint to login',
    );

    if (isAuthenticated) {
      emit(LoginState.success(currentForm, data: const LoginEntity.empty()));
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
