// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_draft_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTransactionDraftRequestBody _$CreateTransactionDraftRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateTransactionDraftRequestBody(
  senderId: json['senderId'] as String,
  receiverId: json['receiverId'] as String,
  amount: (json['amount'] as num).toDouble(),
  description: json['description'] as String,
  transactionTypeId: (json['transactionTypeId'] as num).toInt(),
  isTransactionByPhone: json['isTransactionByPhone'] as bool,
  paymentId: json['paymentId'] as String?,
);

Map<String, dynamic> _$CreateTransactionDraftRequestBodyToJson(
  CreateTransactionDraftRequestBody instance,
) => <String, dynamic>{
  'senderId': instance.senderId,
  'receiverId': instance.receiverId,
  'paymentId': ?instance.paymentId,
  'amount': instance.amount,
  'description': instance.description,
  'transactionTypeId': instance.transactionTypeId,
  'isTransactionByPhone': instance.isTransactionByPhone,
};
