// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAccountResponseBody _$CreateAccountResponseBodyFromJson(
  Map<String, dynamic> json,
) => CreateAccountResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  success: json['success'] as bool,
  data: json['data'],
);

Map<String, dynamic> _$CreateAccountResponseBodyToJson(
  CreateAccountResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'success': instance.success,
  'data': instance.data,
};
