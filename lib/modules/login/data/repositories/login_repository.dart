import '../../../../core/constants/types/type_def.dart';
import '../../logic/entities/login_entity.dart';
import '../../logic/entities/params/login_params.dart';

abstract interface class LoginRepository {
  Future<ApiResult<LoginEntity>> login(LoginParams prams);
}
