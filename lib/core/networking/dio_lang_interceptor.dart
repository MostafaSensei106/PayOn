import 'package:dio/dio.dart';

import '../constants/pref_keys.dart';
import '../services/shared_prefs/base_prefs_storage_service.dart';

final class DioLangInterceptor extends Interceptor {
  DioLangInterceptor(this._prefs);
  final BasePrefsStorageService _prefs;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final lang = _prefs.getData<String>(PrefKeys.language);
    options.headers['lang'] = lang;
    super.onRequest(options, handler);
  }
}
