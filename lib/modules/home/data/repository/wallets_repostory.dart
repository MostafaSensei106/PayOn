import '../../../../core/constants/types/type_def.dart';
import '../../logic/entitys/params/get_wallet_params.dart';
import '../../logic/entitys/wallets_entity.dart';

abstract interface class WalletsRepostory {
  Future<ApiResult<WalletsEntity>> getWallets({
    required GetWalletParams params,
  });
}
