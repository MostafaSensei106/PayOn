import '../../../../core/constants/types/type_def.dart';
import '../../logic/entity/params/get_transactions_params.dart';
import '../../logic/entity/transaction_entity.dart';
import '../../logic/entitys/params/get_wallet_params.dart';
import '../../logic/entitys/wallets_entity.dart';

abstract interface class HomeRepostory {
  Future<ApiResult<WalletsEntity>> getWallets({
    required GetWalletParams params,
  });

  Future<ApiResult<GetTransactionEntity>> getTransactions(
    GetTransactionsParams params,
  );
}
