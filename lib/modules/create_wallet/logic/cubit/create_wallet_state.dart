import 'package:freezed_annotation/freezed_annotation.dart';
import '../entity/currency_entity.dart';

part 'create_wallet_state.freezed.dart';

@freezed
class CreateWalletState with _$CreateWalletState {
  const factory CreateWalletState.initial() = _Initial;
  const factory CreateWalletState.loading() = _Loading;
  const factory CreateWalletState.currenciesLoaded(
    List<CurrencyEntity> currencies,
  ) = _CurrenciesLoaded;
  const factory CreateWalletState.walletCreated() = _WalletCreated;
  const factory CreateWalletState.pinCreated() = _PinCreated;
  const factory CreateWalletState.failure(String message) = _Failure;
}
