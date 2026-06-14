// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWalletResponseBody _$CreateWalletResponseBodyFromJson(
  Map<String, dynamic> json,
) => CreateWalletResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  success: json['success'] as bool,
  data: json['data'],
);

Map<String, dynamic> _$CreateWalletResponseBodyToJson(
  CreateWalletResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'success': instance.success,
  'data': instance.data,
};
