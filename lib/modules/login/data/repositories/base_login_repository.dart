import '../../../../core/networking/api_result/api_result.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';

abstract class BaseLoginRepository {
  Future<APIResult<LoginResponseBody>> login(LoginRequestBody loginRequestBody);
}
