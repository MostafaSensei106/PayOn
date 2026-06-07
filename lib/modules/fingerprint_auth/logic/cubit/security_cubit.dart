import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/biometrics/base_biometrics_service.dart';
import '../../data/repository/base_security_repository.dart';
import 'security_state.dart';

@injectable
final class SecurityCubit extends Cubit<SecurityState> {
  SecurityCubit({required this._repo, required this._biometricsService})
    : super(const SecurityState.initial()) {
    unawaited(getBiometricsSettings());
  }
  final BaseSecurityRepository _repo;
  final BaseBiometricsService _biometricsService;

  Future<void> getBiometricsSettings() async {
    emit(const SecurityState.loading());
    try {
      final settings = await _repo.getBiometricsSettings();
      final isSupported = await _biometricsService.isBiometricsAvailable();
      final updatedSettings = settings.copyWith(isDeviceSupported: isSupported);
      if (isSupported) {
        emit(SecurityState.success(updatedSettings));
      } else {
        emit(
          SecurityState.success(
            settings.copyWith(isDeviceSupported: isSupported),
          ),
        );
      }
    } catch (e) {
      emit(SecurityState.failure(e.toString()));
    }
  }

  Future<void> toggleBiometricsStatus({required bool isEnabled}) async {
    final currentState = state;
    if (currentState is! Success) return;

    if (isEnabled) {
      final isAuth = await _biometricsService.authenticate(
        message: 'Please authenticate to enable biometric',
      );
      if (!isAuth) {
        return;
      }
    }

    try {
      await _repo.toggleBiometricsStatus(isEnabled: isEnabled);
      final updatedSettings = currentState.settings.copyWith(
        isFingerprintEnabled: isEnabled,
      );
      emit(SecurityState.success(updatedSettings));
    } catch (e) {
      emit(SecurityState.failure(e.toString()));
      emit(currentState);
    }
  }
}
