import '../../../../../core/constants/types/type_def.dart';
import '../../models/account_type/account_type_response_body.dart';

abstract interface class BaseAccountTypeRepository {
  Future<ApiResult<AccountTypeResponseBody>> getAccountTypes();
}
