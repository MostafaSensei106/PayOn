import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../data/models/edit_user_porfile_response_body.dart';
import '../../data/models/edit_user_profile_request_body.dart';
import '../../data/models/get_user_profile_response_body.dart';
import '../../data/repository/user_profile_repository.dart';
import '../entity/user_profile_entity.dart';

@LazySingleton(as: UserProfileRepository)
class UserProfileReposiotryImpl implements UserProfileRepository {
  UserProfileReposiotryImpl({required this._api});

  final ApiService _api;

  @override
  Future<ApiResult<UserProfileEntity>> getUserProfile() async {
    final response = await ApiExecutor.execute(
      action: () => _api.getUserProfile(),
    );

    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }

  @override
  Future<ApiResult<EditUserPorfileResponseBody>> editUserProfile(
    EditUserProfileRequestBody body,
  ) => ApiExecutor.execute(action: () => _api.editUserProfile(body));
}
