import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class APIResult<T> with _$APIResult<T> {
  const factory APIResult.success({required T data}) = Success<T>;
  const factory APIResult.failure({required String message}) = Failure;
}
