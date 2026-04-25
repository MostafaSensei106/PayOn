import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../constants/pref_keys.dart';
import '../local_storage/base_secure_storage_service.dart';

final class FlutterSecureStorageService implements BaseSecureStorageService {
  FlutterSecureStorageService(this._storage);

  final FlutterSecureStorage _storage;

  @override
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }

  @override
  Future<String?> getUserToken() async {
    return await _storage.read(key: PrefKeys.userToken);
  }

  @override
  Future<void> saveUserToken(String token) async {
    await _storage.write(key: PrefKeys.userToken, value: token);
  }

  @override
  dynamic getData(String key) async {
    return await _storage.read(key: key);
  }
}
