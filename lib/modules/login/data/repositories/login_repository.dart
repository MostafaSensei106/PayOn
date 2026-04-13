import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';
import 'base_login_repository.dart';

class LoginRepository implements BaseLoginRepository {
  LoginRepository(this._apiService);
  final APIService _apiService;

  @override
  Future<APIResult<LoginResponseBody>> login(LoginRequestBody body) async {
    try {
      final response = await _apiService.login(body);
      return APIResult<LoginResponseBody>.success(data: response);
    } catch (error) {
      return APIResult<LoginResponseBody>.failure(
        errorHandler: APIErrorHandler.handle(error),
      );
    }
  }
}
