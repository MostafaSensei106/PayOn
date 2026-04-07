abstract class BaseSecureStorageService {
  Future<void> saveUserToken(String token);
  Future<String?> getUserToken();
  Future<void> clearUserToken();
}
