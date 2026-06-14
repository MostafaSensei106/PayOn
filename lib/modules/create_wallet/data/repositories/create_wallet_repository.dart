import '../../../../core/constants/types/type_def.dart';
import '../models/create_wallet_pin_request_body.dart';
import '../models/create_wallet_pin_response_body.dart';
import '../models/create_wallet_request_body.dart';
import '../models/create_wallet_response_body.dart';
import '../models/get_currencies_response_body.dart';

abstract interface class CreateWalletRepository {
  Future<ApiResult<GetCurrenciesResponseBody>> getCurrencies();
  Future<ApiResult<CreateWalletResponseBody>> createWallet(
    CreateWalletRequestBody body,
  );
  Future<ApiResult<CreateWalletPinResponseBody>> createWalletPin(
    CreateWalletPinRequestBody body,
  );
}
