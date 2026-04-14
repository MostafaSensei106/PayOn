import '../../../../../core/networking/api_result/api_result.dart';
import '../../models/account_type/account_type_response_body.dart';

abstract class BaseAccountTypeRepository {
  Future<APIResult<AccountTypeResponseBody>> getAccountTypes();
}
