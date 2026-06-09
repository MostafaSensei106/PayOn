import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../data/models/get_transaction_response_body.dart';
import '../../data/models/get_wallets_response_body.dart';
import '../../data/repository/home_repostory.dart';
import '../entity/params/get_transactions_params.dart';
import '../entity/transaction_entity.dart';
import '../entitys/params/get_wallet_params.dart';
import '../entitys/wallets_entity.dart';

@LazySingleton(as: HomeRepostory)
class HomeRepositoryImpl implements HomeRepostory {
  HomeRepositoryImpl({required this._api});

  final ApiService _api;

  @override
  Future<ApiResult<WalletsEntity>> getWallets({
    required GetWalletParams params,
  }) async {
    final response = await ApiExecutor.execute(
      action: () => _api.getWallets(page: params.page, size: params.size),
    );

    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }

  @override
  Future<ApiResult<GetTransactionEntity>> getTransactions(
    GetTransactionsParams params,
  ) async {
    final response = await ApiExecutor.execute(
      action: () => _api.getTransactions(
        minAmount: params.minAmount,
        maxAmount: params.maxAmount,
        transactionTypeId: params.transactionTypeId,
        fromDate: params.fromDate,
        toDate: params.toDate,
        searchQuery: params.searchQuery,
        accountId: params.accountId,
        currencyId: params.currencyId,
        page: params.page,
        size: params.size,
      ),
    );

    return response.when(
      success: (t) => ApiResult.success(data: t.toEntity()),
      failure: (e) => ApiResult.failure(error: e),
    );
  }
}
