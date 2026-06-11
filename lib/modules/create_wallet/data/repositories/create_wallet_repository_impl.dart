import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../../get_started/data/models/currencies/get_currencies_response_body.dart';
import '../models/create_wallet_pin_request_body.dart';
import '../models/create_wallet_pin_response_body.dart';
import '../models/create_wallet_request_body.dart';
import '../models/create_wallet_response_body.dart';
import 'create_wallet_repository.dart';

@LazySingleton(as: CreateWalletRepository)
class CreateWalletRepositoryImpl implements CreateWalletRepository {
  CreateWalletRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ApiResult<GetCurrenciesResponseBody>> getCurrencies() async =>
      ApiExecutor.execute<GetCurrenciesResponseBody>(
        action: () => _apiService.getCurrencies(),
      );

  @override
  Future<ApiResult<CreateWalletResponseBody>> createWallet(
    CreateWalletRequestBody body,
  ) async => ApiExecutor.execute<CreateWalletResponseBody>(
    action: () => _apiService.createWallet(body),
  );

  @override
  Future<ApiResult<CreateWalletPinResponseBody>> createWalletPin(
    CreateWalletPinRequestBody body,
  ) async => ApiExecutor.execute<CreateWalletPinResponseBody>(
    action: () => _apiService.createWalletPin(body),
  );
}
