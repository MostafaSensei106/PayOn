import 'dart:ui' as ui;

import '../../constants/pref_keys.dart';
import '../../services/l10n/l10n_service.dart';
import '../../services/shared_prefs/base_prefs_storage_service.dart';
import 'base_localization_repository.dart';

class LocalizationRepository implements BaseLocalizationRepository {
  LocalizationRepository(this._storage, this._l10nService);

  final BasePrefsStorageService _storage;
  final L10nService _l10nService;

  @override
  Future<void> cacheLanguageCode(String langCode) async {
    await _storage.setData(PrefKeys.language, langCode);
  }

  @override
  String getLanguageCode() {
    final cachedLanguage = _storage.getData(PrefKeys.language) as String?;
    if (cachedLanguage != null) {
      return cachedLanguage;
    }

    final systemLangCode = ui.PlatformDispatcher.instance.locale.languageCode;

    if (_l10nService.supportedLocales
        .map((e) => e.languageCode)
        .contains(systemLangCode)) {
      return systemLangCode;
    }

    return _l10nService.supportedLocales.first.languageCode;
  }
}
