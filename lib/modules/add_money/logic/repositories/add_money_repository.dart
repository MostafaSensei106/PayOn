import '../../../../core/constants/types/type_def.dart';
import '../../data/models/get_providers_response_body.dart';

abstract class AddMoneyRepository {
  Future<ApiResult<GetProvidersResponseBody>> getProviders();
}
