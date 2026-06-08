import 'package:flutter/foundation.dart';
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
    required String country,
    required String balance,
    required bool isActive,
    required bool isDefault,
    required bool filesVerified,
  }) = _WalletItemEntity;

  const factory WalletItemEntity.placeholder({
    @Default('') String walletId,
    @Default('') String ipa,
    @Default('') String currency,
    @Default('') String currencyCode,
    @Default('') String country,
    @Default('0.00') String balance,
    @Default(false) bool isActive,
    @Default(false) bool isDefault,
    @Default(false) bool filesVerified,
  }) = _Placeholder;
}
