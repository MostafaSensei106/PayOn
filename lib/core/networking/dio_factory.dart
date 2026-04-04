import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/app_config.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const timeOut = AppConfig.dioTimeout;
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
}
