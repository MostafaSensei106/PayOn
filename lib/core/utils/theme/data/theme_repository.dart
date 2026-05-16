import 'package:flutter/material.dart';

import '../../../constants/pref_keys.dart';
import '../../../services/shared_prefs/base_prefs_storage_service.dart';
import 'base_theme_repository.dart';

class ThemeRepository implements BaseThemeRepository {
  ThemeRepository(this._storage);
  final BasePrefsStorageService _storage;

  @override
  Future<void> cacheThemeMode(ThemeMode mode) async {
    await _storage.setData<String>(PrefKeys.themeMode, mode.name);
  }

  @override
  ThemeMode getThemeMode() {
    final cachedTheme = _storage.getData<String>(PrefKeys.themeMode);
    return ThemeMode.values.firstWhere(
      (e) => e.name == cachedTheme,
      orElse: () => ThemeMode.system,
    );
  }
}
