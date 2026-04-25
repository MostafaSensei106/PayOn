import '../api_error_handler.dart';
import '../api_result/api_result.dart';

final class ApiExecutor {
  static Future<APIResult<T>> execute<T>({
    required Future<T> Function() call,
  }) async {
    try {
      final response = await call();
      return APIResult<T>.success(data: response);
    } catch (e) {
      return APIResult<T>.failure(errorHandler: APIErrorHandler.handle(e));
    }
  }
}
