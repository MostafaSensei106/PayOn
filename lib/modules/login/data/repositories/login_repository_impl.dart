import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import 'login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._apiService);
  final APIService _apiService;

  @override
  Future<APIResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final response = await _apiService.login(body);
      return APIResult<LoginResponse>.success(data: response);
    } catch (error) {
      return APIResult<LoginResponse>.failure(
        errorHandler: APIErrorHandler.handle(error),
      );
    }
  }
}
