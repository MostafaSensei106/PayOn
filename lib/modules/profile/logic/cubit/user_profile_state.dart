import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/validator/email_validators.dart';
import '../../../../core/utils/validator/full_name.dart';
import '../../data/models/edit_user_porfile_response_body.dart';
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

@freezed
sealed class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial(EditProfileFormState formState) =
      _EditProfileInitial;
  const factory EditProfileState.loading(EditProfileFormState formState) =
      _EditProfileLoading;
  const factory EditProfileState.success(
    EditProfileFormState formState, {
    required EditUserPorfileResponseBody data,
  }) = _EditProfileSuccess;
  const factory EditProfileState.failure(
    EditProfileFormState formState, {
    required String message,
  }) = _EditProfileFailure;
}

@freezed
sealed class EditProfileFormState with _$EditProfileFormState {
  const factory EditProfileFormState({
    @Default(FullName.pure()) FullName name,
    @Default(Email.pure()) Email email,
    @Default(false) isValid,
  }) = _EditProfileFormState;
}
