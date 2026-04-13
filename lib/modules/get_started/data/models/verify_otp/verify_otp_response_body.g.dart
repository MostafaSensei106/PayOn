// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseBody _$VerifyOtpResponseBodyFromJson(
  Map<String, dynamic> json,
) => VerifyOtpResponseBody(
  code: (json['code'] as num).toInt(),
  data: VerifyOtpResponseData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$VerifyOtpResponseBodyToJson(
  VerifyOtpResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};
