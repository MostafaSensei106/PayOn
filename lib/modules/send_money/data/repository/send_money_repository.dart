import '../../../../core/constants/types/type_def.dart';
import '../../logic/entity/check_wallet_entity.dart';
import '../../logic/entity/check_wallet_pin_entity.dart';
import '../../logic/entity/create_tracnsaction_draft_entity.dart';
import '../../logic/entity/params/create_transaction_params.dart';
import '../../logic/entity/params/get_user_favorites_params.dart';
import '../../logic/entity/save_transaction_entity.dart';
import '../../logic/entity/user_favorites_entity.dart';
import '../models/check_wallet/check_wallet_request_body.dart';
import '../models/check_wallet_pin/check_wallet_pin_request_body.dart';
import '../models/save_transaction/save_transaction_request_body.dart';

abstract interface class SendMoneyRepository {
  Future<ApiResult<CheckWalletEntity>> checkWallet(CheckWalletRequestBody body);

  Future<ApiResult<CreateTracnsactionDraftEntity>> creatTransaction(
    CreateTransactionParams params,
  );

  Future<ApiResult<UserFavoritesEntity>> getUserFavorites(
    GetUserFavoritesParams params,
  );

  Future<ApiResult<CheckWalletPinEntity>> checkWalletPin(
    CheckWalletPinRequestBody body,
  );

  Future<ApiResult<SaveTransactionEntity>> saveTransaction(
    SaveTransactionRequestBody body,
  );
}
