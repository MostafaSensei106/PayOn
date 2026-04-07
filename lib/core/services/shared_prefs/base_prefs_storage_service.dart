abstract class BasePrefsStorageService {
  Future<void> saveData(String key, dynamic value);
  dynamic getData(String key);
  Future<void> removeData(String key);
  Future<void> clearAll();
}
