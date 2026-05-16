import '../model/security_settings_model.dart';

abstract class BaseSecurityRepository {
  SecuritySettingsModel getBiometricsSettings();
  Future<void> toggleBiometricsStatus({required bool isEnabled});
}
