import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import 'base_biometrics_service.dart';

class FingerprintService implements BaseBiometricsService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  @override
  Future<bool> authenticate({required String message}) async {
    try {
      final isSupported = await isBiometricsAvailable();
      if (!isSupported) return false;

      return await _localAuth.authenticate(
        localizedReason: message,
        biometricOnly: true,
        persistAcrossBackgrounding: true,
      );
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  Future<bool> isBiometricsAvailable() async {
    try {
      return await _localAuth.canCheckBiometrics ||
          await _localAuth.isDeviceSupported();
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }
}
