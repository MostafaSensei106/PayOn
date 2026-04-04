import 'package:freezed_annotation/freezed_annotation.dart';

import '../api_error_handler.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class APIResult<T> with _$APIResult<T> {
  const factory APIResult.success({required T data}) = Success<T>;
  const factory APIResult.failure({required APIErrorHandler errorHandler}) =
      Failure;
}
