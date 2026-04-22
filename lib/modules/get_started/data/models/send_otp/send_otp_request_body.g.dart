// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpRequestBody _$SendOtpRequestBodyFromJson(Map<String, dynamic> json) =>
    SendOtpRequestBody(
      email: json['emailOrPhone'] as String,
      emailLang: json['lang'] as String,
      isForgotPassword: json['isForgotPassword'] as bool,
    );

Map<String, dynamic> _$SendOtpRequestBodyToJson(SendOtpRequestBody instance) =>
    <String, dynamic>{
      'emailOrPhone': instance.email,
      'lang': instance.emailLang,
      'isForgotPassword': instance.isForgotPassword,
    };
