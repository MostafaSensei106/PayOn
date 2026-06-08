import 'package:freezed_annotation/freezed_annotation.dart';
import '../entity/user_profile_entity.dart';

part 'user_profile_state.freezed.dart';

@freezed
sealed class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = Loading;
  const factory UserProfileState.success({required UserProfileEntity data}) =
      Success;
  const factory UserProfileState.failure({required String message}) = Failure;
}
