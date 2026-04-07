import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uuid/uuid.dart';

import '../local_storage/base_secure_storage_service.dart';

class FlutterSecureStorageService implements BaseSecureStorageService {
  FlutterSecureStorageService(this._storage, this._uuid);
  final Uuid _uuid;

  final FlutterSecureStorage _storage;

  static const String _tokenKeyName = 'user_token_key';

  @override
  Future<String?> getUserToken() async {
    final key = await _storage.read(key: _tokenKeyName);
    if (key == null) return null;
    return await _storage.read(key: key);
  }

  @override
  Future<void> saveUserToken(String token) async {
    var key = await _storage.read(key: _tokenKeyName);
    if (key == null) {
      key = _uuid.v4();
      await _storage.write(key: _tokenKeyName, value: key);
    }
    await _storage.write(key: key, value: token);
  }

  @override
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }

  @override
  Future<void> makeTokenKeyIfNotExist() async {
    final exists = await _storage.containsKey(key: _tokenKeyName);
    if (!exists) {
      await _storage.write(key: _tokenKeyName, value: _uuid.v4());
    }
  }
}
