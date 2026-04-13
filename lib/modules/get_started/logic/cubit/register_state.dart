part of 'register_cubit.dart';

@freezed
sealed class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success({required T data}) = Success<T>;
  const factory RegisterState.failure({required String error}) = Failure;
}
