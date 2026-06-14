import '../../../../core/constants/types/type_def.dart';
import '../../../home/data/models/get_transaction_response_body.dart';
import '../models/set_transaction_status_request_body.dart';

abstract interface class RequestMoneyRepository {
  Future<ApiResult<GetTransactionResponseBody>> getPendingTransactions({
    int page = 1,
    int size = 20,
  });

  Future<ApiResult<void>> setTransactionStatus(
    SetTransactionStatusRequestBody body,
  );
}
