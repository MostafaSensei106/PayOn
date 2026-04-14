import '../../../../../core/networking/api_result/api_result.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';

abstract class BaseRegisterRepository {
  Future<APIResult<RegisterResponseBody>> register(RegisterRequestBody body);
}
