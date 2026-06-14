// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_transaction_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveTransactionRequestBody _$SaveTransactionRequestBodyFromJson(
  Map<String, dynamic> json,
) => SaveTransactionRequestBody(
  draftids: (json['draftids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  walletId: json['senderId'] as String,
  otp: json['otp'] as String,
  isAcceptRequest: json['isAcceptRequest'] as bool,
);

Map<String, dynamic> _$SaveTransactionRequestBodyToJson(
  SaveTransactionRequestBody instance,
) => <String, dynamic>{
  'draftids': instance.draftids,
  'senderId': instance.walletId,
  'otp': instance.otp,
  'isAcceptRequest': instance.isAcceptRequest,
};
