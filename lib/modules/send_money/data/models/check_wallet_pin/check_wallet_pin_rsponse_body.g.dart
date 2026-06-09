// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_wallet_pin_rsponse_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckWalletPinRsponseBody _$CheckWalletPinRsponseBodyFromJson(
  Map<String, dynamic> json,
) => CheckWalletPinRsponseBody(
  isVerified: json['isVerified'] as bool,
  otp: json['otp'] as String,
  otpExpiresAt: DateTime.parse(json['otpExpiresAt'] as String),
);

Map<String, dynamic> _$CheckWalletPinRsponseBodyToJson(
  CheckWalletPinRsponseBody instance,
) => <String, dynamic>{
  'isVerified': instance.isVerified,
  'otp': instance.otp,
  'otpExpiresAt': instance.otpExpiresAt.toIso8601String(),
};
