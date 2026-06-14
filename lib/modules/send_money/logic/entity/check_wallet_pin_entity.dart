import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_wallet_pin_entity.freezed.dart';

@freezed
abstract class CheckWalletPinEntity with _$CheckWalletPinEntity {
  const factory CheckWalletPinEntity({
    required bool isVerified,
    required String otp,
    required DateTime otpExpiresAt,
  }) = _CheckWalletPinEntity;
}
