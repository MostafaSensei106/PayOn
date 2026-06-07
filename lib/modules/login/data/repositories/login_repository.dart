import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';
import 'base_login_repository.dart';

final class LoginRepository implements BaseLoginRepository {
  LoginRepository(this._apiService);
  final ApiService _apiService;

  @override
  Future<ApiResult<LoginResponseBody>> login(LoginRequestBody body) async =>
      ApiExecutor.execute<LoginResponseBody>(
        action: () => _apiService.login(body),
      );
}
