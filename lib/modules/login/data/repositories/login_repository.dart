import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';
import 'base_login_repository.dart';

final class LoginRepository implements BaseLoginRepository {
  LoginRepository(this._apiService);
  final ApiService _apiService;

  @override
  Future<APIResult<LoginResponseBody>> login(LoginRequestBody body) async =>
      ApiExecutor.execute<LoginResponseBody>(
        call: () => _apiService.login(body),
      );
}
