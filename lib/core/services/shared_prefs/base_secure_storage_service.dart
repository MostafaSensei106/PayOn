abstract class BaseSecureStorageService {
  Future<void> clearCredentials();
  Future<void> saveData(String key, dynamic value);
  dynamic getData(String key);
  Future<void> removeData(String key);
}
