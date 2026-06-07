import 'dart:async';

import 'package:dio/dio.dart';

import '../constants/api_header.dart';
import '../constants/pref_keys.dart';
import '../router/app_router.dart';
import '../services/shared_prefs/base_pref_storage_service.dart';
import '../widgets/feedback/dialog/dialog_component.dart';

final class DioTokenInterceptor extends Interceptor {
  DioTokenInterceptor(this._tokenProvider);

  final BasePrefStorageService _tokenProvider;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenProvider.getData<String>(key: PrefKeys.userToken);
    if (token != null) {
      options.headers[ApiHeader.authorization] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final context = AppRouter.navigatorKey.currentContext;
      if (context != null) {
        unawaited(
          Future.wait([
            _tokenProvider.removeData(key: PrefKeys.userToken),
            _tokenProvider.removeData(key: PrefKeys.isRememberMe),
          ]),
        );

        final title = context.localeKeys.sessionExpired;
        final body = context.localeKeys.sessionExpiredDescription;
        await DialogComponent.showInfo(
          context: context,
          title: title,
          body: body,
        );

        AppRouter.router.go(AppRouter.login);
      } else {
        await Future.wait([
          _tokenProvider.removeData(key: PrefKeys.userToken),
          _tokenProvider.removeData(key: PrefKeys.isRememberMe),
        ]);
        AppRouter.router.go(AppRouter.login);
      }
    }
    handler.next(err);
  }
}
