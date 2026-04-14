import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result/api_result.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';

import 'base_register_repository.dart';

class RegisterRepository implements BaseRegisterRepository {
  RegisterRepository(this._apiService);

  final APIService _apiService;

  @override
  Future<APIResult<RegisterResponseBody>> register(
    RegisterRequestBody body,
  ) async {
    try {
      final response = await _apiService.register(body);
      return APIResult<RegisterResponseBody>.success(data: response);
    } catch (error) {
      return APIResult.failure(errorHandler: APIErrorHandler.handle(error));
    }
  }
}
