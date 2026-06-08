import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../usecase/get_user_profile_usecase.dart';
import 'user_profile_state.dart';

@injectable
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
