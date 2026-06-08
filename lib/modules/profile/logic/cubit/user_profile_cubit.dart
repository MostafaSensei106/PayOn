import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../../../core/utils/validator/email_validators.dart';
import '../../../../core/utils/validator/full_name.dart';
import '../../data/models/edit_user_porfile_response_body.dart';
import '../../data/models/edit_user_profile_request_body.dart';
import '../usecase/edit_user_profile_usecase.dart';
import '../usecase/get_user_profile_usecase.dart';
import 'user_profile_state.dart';

@lazySingleton
class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this._getU, this._editU)
    : super(const UserProfileState.initial(EditProfileFormState()));

  final GetUserProfileUsecase _getU;
  final EditUserProfileUsecase _editU;

  Future<void> getProfile() async {
    final form = state.formState;
    emit(UserProfileState.loading(form));

    final response = await _getU.call(const NoParams());

    response.when(
      success: (t) {
        final updatedForm = form.copyWith(
          name: FullName.dirty(t.name),
          email: Email.dirty(t.email),
          isValid: true,
        );
        emit(UserProfileState.success(updatedForm, data: t));
      },
      failure: (e) => emit(UserProfileState.failure(form, message: e.message)),
    );
  }

  Future<Void> editUserProfile() async {
    if (!state.formState.isValid) return;
    final form = state.formState;
    emit(UserProfileState.loading(form));

    final body = EditUserProfileRequestBody(
      name: form.name.value,
      email: form.email.value,
    );

    final response = await _editU.call(body);

    response.when(success: (t) => ), failure: failure)
  }
}
