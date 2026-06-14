import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/check_wallet_pin_entity.dart';

part 'check_wallet_pin_rsponse_body.g.dart';

@JsonSerializable()
class CheckWalletPinRsponseBody {
  const CheckWalletPinRsponseBody(
    this.code,
    this.message,
    this.data,
    this.errors,
    this.success,
  );

  factory CheckWalletPinRsponseBody.fromJson(Map<String, dynamic> json) =>
      _$CheckWalletPinRsponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckWalletPinRsponseBodyToJson(this);

  final int code;
  final String message;
  final CheckWalletData data;
  final List<String> errors;
  final bool success;
}

@JsonSerializable()
class CheckWalletData {
  CheckWalletData({
    required this.isVerified,
    required this.otp,
    required this.otpExpiresAt,
  });

  factory CheckWalletData.fromJson(Map<String, dynamic> json) =>
      _$CheckWalletDataFromJson(json);

  Map<String, dynamic> toJson() => _$CheckWalletDataToJson(this);

  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'otp')
  final String otp;
  @JsonKey(name: 'otpExpiresAt')
  final DateTime otpExpiresAt;
}

extension CheckWalletPinMapper on CheckWalletPinRsponseBody {
  CheckWalletPinEntity toEntity() {
    return CheckWalletPinEntity(
      isVerified: data.isVerified,
      otp: data.otp,
      otpExpiresAt: data.otpExpiresAt,
    );
  }
}
