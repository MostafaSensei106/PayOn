// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_wallet_pin_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckWalletPinRequestBody _$CheckWalletPinRequestBodyFromJson(
  Map<String, dynamic> json,
) => CheckWalletPinRequestBody(
  walletId: json['accountId'] as String,
  pinHash: json['pinHash'] as String,
);

Map<String, dynamic> _$CheckWalletPinRequestBodyToJson(
  CheckWalletPinRequestBody instance,
) => <String, dynamic>{
  'accountId': instance.walletId,
  'pinHash': instance.pinHash,
};
