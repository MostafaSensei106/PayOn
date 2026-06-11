// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWalletRequestBody _$CreateWalletRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateWalletRequestBody(
  accountId: json['accountId'] as String,
  ipa: json['ipa'] as String,
  currencyId: (json['currencyId'] as num).toInt(),
);

Map<String, dynamic> _$CreateWalletRequestBodyToJson(
  CreateWalletRequestBody instance,
) => <String, dynamic>{
  'accountId': instance.accountId,
  'ipa': instance.ipa,
  'currencyId': instance.currencyId,
};
