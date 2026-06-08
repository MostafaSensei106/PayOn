import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../data/models/check_wallet_request_body.dart';
import '../../data/models/check_wallet_response_body.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/check_wallet_entity.dart';

@LazySingleton(as: SendMoneyRepository)
class SendMoneyRepositoryImpl implements SendMoneyRepository {
  SendMoneyRepositoryImpl({required this._api});

  final ApiService _api;

  @override
  Future<ApiResult<CheckWalletEntity>> checkWallet(
    CheckWalletRequestBody body,
  ) async {
    final response = await ApiExecutor.execute(
      action: () => _api.checkWallet(body),
    );

    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }
}
