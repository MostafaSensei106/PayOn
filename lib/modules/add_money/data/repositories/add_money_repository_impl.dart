import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../logic/repositories/add_money_repository.dart';
import '../models/get_providers_response_body.dart';

@LazySingleton(as: AddMoneyRepository)
class AddMoneyRepositoryImpl implements AddMoneyRepository {
  AddMoneyRepositoryImpl(this._api);

  final ApiService _api;

  @override
  Future<ApiResult<GetProvidersResponseBody>> getProviders() async {
    final response = await ApiExecutor.execute(
      action: () => _api.getProvidersAsync(),
    );

    return response.when(
      success: (t) => ApiResult.success(data: t),
      failure: (e) => ApiResult.failure(error: e),
    );
  }
}
