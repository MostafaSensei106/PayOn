import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/validator/email_validators.dart';
import '../../../../core/utils/validator/full_name.dart';
import '../entity/user_profile_entity.dart';

part 'user_profile_state.freezed.dart';

@freezed
sealed class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial(EditProfileFormState formState) =
      _Initial;
  const factory UserProfileState.loading(EditProfileFormState formState) =
      Loading;
  const factory UserProfileState.success(
    EditProfileFormState formState, {
    required UserProfileEntity data,
  }) = Success;
  const factory UserProfileState.failure(
    EditProfileFormState formState, {
    required String message,
  }) = Failure;
}

@freezed
sealed class EditProfileFormState with _$EditProfileFormState {
  const factory EditProfileFormState({
    @Default(FullName.pure()) FullName name,
    @Default(Email.pure()) Email email,
    @Default(false) isValid,
  }) = _EditProfileFormState;
}

extension EditProfileFromStateX on EditProfileFormState {
  EditProfileFormState getFormStateFromProfileState(UserProfileState state) =>
      state.when(
        initial: (f) => f,
        loading: (f) => f,
        success: (f, _) => f,
        failure: (f, _) => f,
      );
}
