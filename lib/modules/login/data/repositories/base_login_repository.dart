import '../../../../core/constants/types/type_def.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';

abstract interface class BaseLoginRepository {
  Future<ApiResult<LoginResponseBody>> login(LoginRequestBody body);
}
