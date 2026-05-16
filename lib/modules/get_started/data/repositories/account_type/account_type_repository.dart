import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_result/api_result.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/account_type/account_type_response_body.dart';
import 'base_account_type_repository.dart';

final class AccountTypeRepository implements BaseAccountTypeRepository {
  AccountTypeRepository(this._apiService);

  final APIService _apiService;

  @override
  Future<APIResult<AccountTypeResponseBody>> getAccountTypes() async =>
      ApiExecutor.execute<AccountTypeResponseBody>(
        call: _apiService.getAccountTypes,
      );
}
