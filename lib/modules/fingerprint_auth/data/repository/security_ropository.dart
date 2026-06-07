import '../../../../core/constants/pref_keys.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../model/security_settings_model.dart';
import 'base_security_repository.dart';

final class SecurityRopository extends BaseSecurityRepository {
  SecurityRopository(this._pref);

  final BasePrefStorageService _pref;

  @override
  SecuritySettingsModel getBiometricsSettings() {
    final isEnabled = _pref.getData<bool>(PrefKeys.isFingerprintEnabled);
    if (isEnabled == null) {
      return const SecuritySettingsModel();
    }
    return SecuritySettingsModel(isFingerprintEnabled: isEnabled);
  }

  @override
  Future<void> toggleBiometricsStatus({required bool isEnabled}) async {
    await _pref.setData<bool>(PrefKeys.isFingerprintEnabled, isEnabled);
  }
}
