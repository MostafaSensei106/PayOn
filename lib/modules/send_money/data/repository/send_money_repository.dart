import '../../../../core/constants/types/type_def.dart';
import '../../logic/entity/check_wallet_entity.dart';
import '../models/check_wallet/check_wallet_request_body.dart';

abstract interface class SendMoneyRepository {
  Future<ApiResult<CheckWalletEntity>> checkWallet(CheckWalletRequestBody body);
}
