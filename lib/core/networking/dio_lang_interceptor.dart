import 'package:dio/dio.dart';

import '../constants/pref_keys.dart';
import '../services/shared_prefs/base_prefs_storage_service.dart';

final class DioLangInterceptor extends Interceptor {
  DioLangInterceptor(this._prefsStorageService);
  final BasePrefsStorageService _prefsStorageService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final lang = await _prefsStorageService.getData(PrefKeys.language) ?? 'en';
    options.headers['lang'] = lang;
    super.onRequest(options, handler);
  }
}
