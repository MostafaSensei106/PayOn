abstract class BasePrefsStorageService {
  Future<void> setData(String key, dynamic value);
  dynamic getData(String key);
  Future<void> removeData(String key);
  Future<void> clearAll();
}
