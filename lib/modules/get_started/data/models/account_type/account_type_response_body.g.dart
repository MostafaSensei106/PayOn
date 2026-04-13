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
  data: (json['data'] as List<dynamic>)
      .map((e) => AccountTypeData.fromJson(e as Map<String, dynamic>))
      .toList(),
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
