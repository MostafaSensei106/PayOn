import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type_state.freezed.dart';

@freezed
sealed class AccountTypeState<T> with _$AccountTypeState<T> {
  const factory AccountTypeState.initial() = _Initial;
  const factory AccountTypeState.loading() = Loading;
  const factory AccountTypeState.success({required T data}) = Success<T>;
  const factory AccountTypeState.failure({required String error}) = Failure;
}
