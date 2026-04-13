abstract class BaseSecureStorageService {
  Future<void> saveUserToken(String token);
  dynamic getData(String key);
  Future<String?> getUserToken();
  Future<void> clearAll();
}
