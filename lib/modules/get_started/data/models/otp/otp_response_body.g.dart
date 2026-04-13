// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpResponseBody _$OtpResponseBodyFromJson(Map<String, dynamic> json) =>
    OtpResponseBody(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: OtpResponseData.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$OtpResponseBodyToJson(OtpResponseBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success': instance.success,
    };
