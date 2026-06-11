// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_pin_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWalletPinRequestBody _$CreateWalletPinRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateWalletPinRequestBody(
  accountId: json['accountId'] as String,
  pinHash: json['pinHash'] as String,
);

Map<String, dynamic> _$CreateWalletPinRequestBodyToJson(
  CreateWalletPinRequestBody instance,
) => <String, dynamic>{
  'accountId': instance.accountId,
  'pinHash': instance.pinHash,
};
