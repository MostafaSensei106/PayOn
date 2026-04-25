import 'package:shared_preferences/shared_preferences.dart';

import 'base_prefs_storage_service.dart';

final class SharedPrefsService implements BasePrefsStorageService {
  SharedPrefsService(this._prefs);
  final SharedPreferences _prefs;

  @override
  Future<void> clearAll() async {
    await _prefs.clear();
  }

  @override
  dynamic getData(String key) {
    return _prefs.get(key);
  }

  @override
  Future<void> removeData(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<void> setData(String key, dynamic value) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw Exception('Unsupported type');
    }
  }
}
