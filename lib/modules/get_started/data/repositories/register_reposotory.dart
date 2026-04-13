import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/account_type/account_type_response_body.dart';
import 'base_register_repository.dart';

class RegisterReposotory implements BaseRegisterRepository {
  RegisterReposotory(this._apiService);

  final APIService _apiService;

  @override
  Future<APIResult<AccountTypeResponseBody>> getAccountTypes() async {
    try {
      final response = await _apiService.getAccountTypes();
      return APIResult<AccountTypeResponseBody>.success(data: response);
    } catch (error) {
      return APIResult<AccountTypeResponseBody>.failure(
        errorHandler: APIErrorHandler.handle(error),
      );
    }
  }
}
