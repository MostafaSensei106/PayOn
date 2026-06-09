import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_wallet_entity.freezed.dart';

@freezed
abstract class CheckWalletEntity with _$CheckWalletEntity {
  const factory CheckWalletEntity({
    required String name,
    required String reciverId,
    required int currencyId,
    required String img,
    required bool founded,
  }) = _CheckWalletEntity;

  factory CheckWalletEntity.placeholder() => const CheckWalletEntity(
    name: '',
    reciverId: '',
    currencyId: 0,
    img: '',
    founded: false,
  );
}
