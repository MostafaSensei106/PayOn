import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../../../core/utils/validator/email_validators.dart';
import '../../../../core/utils/validator/full_name.dart';
import '../../data/models/edit_user_profile_request_body.dart';
import '../usecase/edit_user_profile_usecase.dart';
import '../usecase/get_user_profile_usecase.dart';
import 'user_profile_state.dart';

@lazySingleton
class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this._u) : super(const UserProfileState.initial());

  final GetUserProfileUsecase _u;

  Future<void> getProfile() async {
    emit(const UserProfileState.loading());
    final response = await _u.call(const NoParams());
    response.when(
      success: (t) => emit(UserProfileState.success(data: t)),
      failure: (e) => emit(UserProfileState.failure(message: e.message)),
    );
  }
}

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this._u)
    : super(const EditProfileState.initial(EditProfileFormState()));

  final EditUserProfileUsecase _u;

  Future<void> editProfile() async {
    if (state.formState.isValid == false) return;

    final cForm = state.formState;

    emit(EditProfileState.loading(cForm));

    final response = await _u.call(
      EditUserProfileRequestBody(
        name: cForm.name.value,
        email: cForm.email.value,
      ),
    );

    response.when(
      success: (t) => emit(EditProfileState.success(cForm, data: t)),
      failure: (e) => emit(EditProfileState.failure(cForm, message: e.message)),
    );
  }

  void onNameChanged(String value) {
    final name = FullName.dirty(value);
    _validate(state.formState.copyWith(name: name));
  }

  void onEmailChanged(String value) {
    final email = Email.dirty(value);
    _validate(state.formState.copyWith(email: email));
  }

  void _validate(EditProfileFormState form) {
    final isValid = Formz.validate([form.name, form.email]);
    final updatedForm = form.copyWith(isValid: isValid);
    emit(EditProfileState.initial(updatedForm));
  }
}
