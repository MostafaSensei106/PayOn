import '../../../../core/networking/api_result/api_result.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';

abstract class LoginRepository {
  Future<APIResult<LoginResponse>> login(LoginRequestBody loginRequestBody);
}
