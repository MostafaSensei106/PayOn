import 'package:json_annotation/json_annotation.dart';

part 'check_wallet_pin_rsponse_body.g.dart';

@JsonSerializable()
class CheckWalletPinRsponseBody {
  const CheckWalletPinRsponseBody({
    required this.isVerified,
    required this.otp,
    required this.otpExpiresAt,
  });

  factory CheckWalletPinRsponseBody.fromJson(Map<String, dynamic> json) =>
      _$CheckWalletPinRsponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckWalletPinRsponseBodyToJson(this);

  final bool isVerified;
  @JsonKey(name: 'otp')
  final String otp;
  final DateTime otpExpiresAt;
}
