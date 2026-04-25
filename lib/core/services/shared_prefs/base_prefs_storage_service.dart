abstract class BasePrefsStorageService {
  Future<void> setData<T>(String key, T value);
  T? getData<T>(String key);
  Future<void> removeData(String key);
  Future<void> clearAll();
}
