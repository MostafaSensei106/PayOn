// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequestBody _$VerifyOtpRequestBodyFromJson(
  Map<String, dynamic> json,
) => VerifyOtpRequestBody(
  email: json['emailOrPhone'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$VerifyOtpRequestBodyToJson(
  VerifyOtpRequestBody instance,
) => <String, dynamic>{'emailOrPhone': instance.email, 'code': instance.code};
