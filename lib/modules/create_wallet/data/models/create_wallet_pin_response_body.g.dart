// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_pin_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWalletPinResponseBody _$CreateWalletPinResponseBodyFromJson(
  Map<String, dynamic> json,
) => CreateWalletPinResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  success: json['success'] as bool,
  data: json['data'],
);

Map<String, dynamic> _$CreateWalletPinResponseBodyToJson(
  CreateWalletPinResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'success': instance.success,
  'data': instance.data,
};
