import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_wallet_entity.freezed.dart';

@freezed
abstract class CheckWalletEntity with _$CheckWalletEntity {
  const factory CheckWalletEntity({
    required String name,
    required String reciverId,
    required String currencyId,
    required String img,
    required String founded,
  }) = _CheckWalletEntity;
}
