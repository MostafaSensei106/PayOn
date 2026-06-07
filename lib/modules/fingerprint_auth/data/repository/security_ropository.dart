import '../../../../core/constants/pref_keys.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../model/security_settings_model.dart';
import 'base_security_repository.dart';

final class SecurityRopository extends BaseSecurityRepository {
  SecurityRopository(this._pref);

  final BasePrefStorageService _pref;

  @override
  Future<SecuritySettingsModel> getBiometricsSettings() async {
    final isEnabled = await _pref.getData<bool>(
      key: PrefKeys.isFingerprintEnabled,
    );
    if (isEnabled == null) {
      return const SecuritySettingsModel();
    }
    return SecuritySettingsModel(isFingerprintEnabled: isEnabled);
  }

  @override
  Future<void> toggleBiometricsStatus({required bool isEnabled}) async {
    await _pref.setData<bool>(
      key: PrefKeys.isFingerprintEnabled,
      value: isEnabled,
    );
  }
}
