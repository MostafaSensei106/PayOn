import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/account_type/account_type_response_body.dart';
import 'base_account_type_repository.dart';

@LazySingleton(as: BaseAccountTypeRepository)
final class AccountTypeRepository implements BaseAccountTypeRepository {
  AccountTypeRepository(this._apiService);

  final ApiService _apiService;

  @override
  Future<ApiResult<AccountTypeResponseBody>> getAccountTypes() async =>
      ApiExecutor.execute<AccountTypeResponseBody>(
        action: _apiService.getAccountTypes,
      );
}
