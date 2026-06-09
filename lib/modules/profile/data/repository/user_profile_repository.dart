import '../../../../core/constants/types/type_def.dart';
import '../../logic/entity/user_profile_entity.dart';
import '../models/edit_user_porfile_response_body.dart';
import '../models/edit_user_profile_request_body.dart';

abstract interface class UserProfileRepository {
  Future<ApiResult<UserProfileEntity>> getUserProfile();

  Future<ApiResult<EditUserPorfileResponseBody>> editUserProfile(
    EditUserProfileRequestBody body,
  );
}
