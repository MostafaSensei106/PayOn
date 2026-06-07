// /home/ottafa/Devolpments/PayOn/lib/core/networking/api_error_handler/api_error_handler.dart
import 'package:dio/dio.dart';
import '../utils/error/failures.dart';
import 'api_error_model/api_error_model.dart';

class APIErrorHandler {
  static Failures handle(dynamic error) {
    if (error is DioException) {
      return _handleError(error);
    } else {
      return const UnknownFailure('An unexpected error occurred');
    }
  }

  static Failures _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutFailure('Connection timeout');
      case DioExceptionType.badResponse:
        if (error.response?.data != null &&
            error.response?.data is Map<String, dynamic>) {
          final model = APIErrorModel.fromJson(
            error.response!.data as Map<String, dynamic>,
          );
          return ServerFailure(model.message);
        }
        return ServerFailure('Bad response: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        return const ServerFailure('Request cancelled');
      case DioExceptionType.connectionError:
        return const NetworkFailure('No Internet Connection');
      default:
        return const UnknownFailure('Something went wrong');
    }
  }
}
