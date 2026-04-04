// /home/ottafa/Devolpments/PayOn/lib/core/networking/api_error_handler/api_error_handler.dart
import 'package:dio/dio.dart';
import 'api_error_model/api_error_model.dart';

class APIErrorHandler implements Exception {
  APIErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = APIErrorModel(
        code: 0,
        message: 'An unexpected error occurred',
      );
    }
  }
  late APIErrorModel apiErrorModel;

  APIErrorModel get failure => apiErrorModel;

  APIErrorModel _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return APIErrorModel(code: -1, message: 'Connection timeout');
      case DioExceptionType.sendTimeout:
        return APIErrorModel(code: -2, message: 'Send timeout');
      case DioExceptionType.receiveTimeout:
        return APIErrorModel(code: -3, message: 'Receive timeout');
      case DioExceptionType.badResponse:
        if (error.response?.data != null &&
            error.response?.data is Map<String, dynamic>) {
          return APIErrorModel.fromJson(
            error.response!.data as Map<String, dynamic>,
          );
        }
        return APIErrorModel(
          code: error.response?.statusCode ?? -4,
          message: 'Bad response',
        );
      case DioExceptionType.cancel:
        return APIErrorModel(code: -5, message: 'Request cancelled');
      default:
        return APIErrorModel(code: -6, message: 'Something went wrong');
    }
  }
}
