import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../data/models/check_wallet/check_wallet_request_body.dart';
import '../../data/models/check_wallet/check_wallet_response_body.dart';
import '../../data/models/check_wallet_pin/check_wallet_pin_request_body.dart';
import '../../data/models/check_wallet_pin/check_wallet_pin_rsponse_body.dart';
import '../../data/models/create_transaction_draft/create_transaction_draft_request_body.dart';
import '../../data/models/create_transaction_draft/create_transaction_draft_response_body.dart';
import '../../data/models/get_favorites/get_user_favorites_response_body.dart';
import '../../data/models/save_transaction/save_transaction_request_body.dart';
import '../../data/models/save_transaction/save_transaction_response_body.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/check_wallet_entity.dart';
import '../entity/check_wallet_pin_entity.dart';
import '../entity/create_tracnsaction_draft_entity.dart';
import '../entity/params/create_transaction_params.dart';
import '../entity/params/get_user_favorites_params.dart';
import '../entity/save_transaction_entity.dart';
import '../entity/user_favorites_entity.dart';

@LazySingleton(as: SendMoneyRepository)
class SendMoneyRepositoryImpl implements SendMoneyRepository {
  SendMoneyRepositoryImpl({required this._api});

  final ApiService _api;

  @override
  Future<ApiResult<CreateTracnsactionDraftEntity>> creatTransaction(
    CreateTransactionParams params,
  ) async {
    final body = CreateTransactionDraftRequestBody(
      senderId: params.senderId,
      receiverId: params.receiverId,
      paymentId: params.paymentId,
      amount: params.amount,
      description: params.description,
      transactionTypeId: params.transactionTypeId,
      isTransactionByPhone: params.isTransactionByPhone,
    );

    final response = await ApiExecutor.execute(
      action: () => _api.createTransactionDraft(body),
    );

    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }

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

  @override
  Future<ApiResult<UserFavoritesEntity>> getUserFavorites(
    GetUserFavoritesParams params,
  ) async {
    final response = await ApiExecutor.execute(
      action: () => _api.getUserFavorites(
        page: params.page,
        size: params.size,
        shearch: params.search,
        isAddedByIPA: params.isAddedByIPA,
      ),
    );
    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }

  @override
  Future<ApiResult<CheckWalletPinEntity>> checkWalletPin(
    CheckWalletPinRequestBody body,
  ) async {
    final response = await ApiExecutor.execute(
      action: () => _api.checkWalletPin(body),
    );
    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }

  @override
  Future<ApiResult<SaveTransactionEntity>> saveTransaction(
    SaveTransactionRequestBody body,
  ) async {
    final response = await ApiExecutor.execute(
      action: () => _api.saveTransaction(body),
    );
    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }
}
