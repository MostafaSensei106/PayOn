import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../../home/data/models/get_transaction_response_body.dart';
import '../models/set_transaction_status_request_body.dart';
import 'request_money_repository.dart';

@LazySingleton(as: RequestMoneyRepository)
class RequestMoneyRepositoryImpl implements RequestMoneyRepository {
  RequestMoneyRepositoryImpl({required this._api});

  final ApiService _api;

  @override
  Future<ApiResult<GetTransactionResponseBody>> getPendingTransactions({
    int page = 1,
    int size = 20,
  }) async {
    return ApiExecutor.execute<GetTransactionResponseBody>(
      action: () => _api.getPendingTransactions(page: page, size: size),
    );
  }

  @override
  Future<ApiResult<void>> setTransactionStatus(
    SetTransactionStatusRequestBody body,
  ) async {
    return ApiExecutor.execute<void>(
      action: () => _api.setTransactionStatus(body),
    );
  }
}
