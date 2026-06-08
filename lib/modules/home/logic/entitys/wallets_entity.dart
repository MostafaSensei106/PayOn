import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallets_entity.freezed.dart';

@freezed
abstract class WalletsEntity with _$WalletsEntity {
  const factory WalletsEntity({required List<WalletItemEntity> wallets}) =
      _WalletEntity;
}

@freezed
abstract class WalletItemEntity with _$WalletItemEntity {
  const factory WalletItemEntity({
    required String walletId,
    required String ipa,
    required String currency,
    required String currencyCode,
    required String balance,
    required bool isActive,
    required bool isDefault,
    required bool filesVerified,
  }) = _WalletItemEntity;
}
