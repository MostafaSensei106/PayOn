import '../../../../core/constants/types/type_def.dart';
import '../../logic/entity/check_wallet_entity.dart';
import '../../logic/entity/params/get_user_favorites_params.dart';
import '../../logic/entity/user_favorites_entity.dart';
import '../models/check_wallet/check_wallet_request_body.dart';

abstract interface class SendMoneyRepository {
  Future<ApiResult<CheckWalletEntity>> checkWallet(CheckWalletRequestBody body);

  Future<ApiResult<UserFavoritesEntity>> getUserFavorites(
    GetUserFavoritesParams params,
  );
}
