import '../../../../core/constants/types/type_def.dart';
import '../../logic/entity/user_profile_entity.dart';

abstract interface class UserProfileRepository {
  Future<ApiResult<UserProfileEntity>> getUserProfile();
}
