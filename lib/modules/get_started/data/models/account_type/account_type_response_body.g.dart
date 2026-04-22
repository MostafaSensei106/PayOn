// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountTypeResponseBody _$AccountTypeResponseBodyFromJson(
  Map<String, dynamic> json,
) => AccountTypeResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: AccountTypeData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
);

Map<String, dynamic> _$AccountTypeResponseBodyToJson(
  AccountTypeResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'success': instance.success,
};
