abstract class BaseSecureStorageService {
  Future<void> makeTokenKeyIfNotExist();
  Future<void> saveUserToken(String token);
  Future<String?> getUserToken();
  Future<void> clearAll();
}
