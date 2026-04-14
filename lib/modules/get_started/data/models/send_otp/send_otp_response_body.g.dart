// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpResponseBody _$SendOtpResponseBodyFromJson(Map<String, dynamic> json) =>
    SendOtpResponseBody(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: SendOtpResponseData.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$SendOtpResponseBodyToJson(
  SendOtpResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'success': instance.success,
};
