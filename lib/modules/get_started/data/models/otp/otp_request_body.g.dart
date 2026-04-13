// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpRequestBody _$OtpRequestBodyFromJson(Map<String, dynamic> json) =>
    OtpRequestBody(
      email: json['emailOrPhone'] as String,
      emailLang: json['lang'] as String,
      isForgotPassword: json['isForgotPassword'] as bool,
    );

Map<String, dynamic> _$OtpRequestBodyToJson(OtpRequestBody instance) =>
    <String, dynamic>{
      'emailOrPhone': instance.email,
      'lang': instance.emailLang,
      'isForgotPassword': instance.isForgotPassword,
    };
