import 'package:package_info_plus/package_info_plus.dart';

abstract class BaseSettingsRepository {
  Future<void> setThemeMode(String theme);
  String getThemeMode();

  Future<void> setLanguage(String languageCode);
  String getLanguage();

  Future<void> setNotificationsEnabled(bool enabled);
  bool isNotificationsEnabled();

  Future<PackageInfo> getAppInfo();
}
