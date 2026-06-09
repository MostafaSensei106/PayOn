// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_wallet_pin_rsponse_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckWalletPinRsponseBody _$CheckWalletPinRsponseBodyFromJson(
  Map<String, dynamic> json,
) => CheckWalletPinRsponseBody(
  (json['code'] as num).toInt(),
  json['message'] as String,
  CheckWalletData.fromJson(json['data'] as Map<String, dynamic>),
  (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  json['success'] as bool,
);

Map<String, dynamic> _$CheckWalletPinRsponseBodyToJson(
  CheckWalletPinRsponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'success': instance.success,
};

CheckWalletData _$CheckWalletDataFromJson(Map<String, dynamic> json) =>
    CheckWalletData(
      isVerified: json['isVerified'] as bool,
      otp: json['otp'] as String,
      otpExpiresAt: DateTime.parse(json['otpExpiresAt'] as String),
    );

Map<String, dynamic> _$CheckWalletDataToJson(CheckWalletData instance) =>
    <String, dynamic>{
      'isVerified': instance.isVerified,
      'otp': instance.otp,
      'otpExpiresAt': instance.otpExpiresAt.toIso8601String(),
    };
