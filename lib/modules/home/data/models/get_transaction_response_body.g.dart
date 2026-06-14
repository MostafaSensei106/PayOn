// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transaction_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTransactionResponseBody _$GetTransactionResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetTransactionResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: TransactionsDataModel.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$GetTransactionResponseBodyToJson(
  GetTransactionResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'success': instance.success,
  'errors': instance.errors,
};

TransactionsDataModel _$TransactionsDataModelFromJson(
  Map<String, dynamic> json,
) => TransactionsDataModel(
  totalItems: (json['totalItems'] as num).toInt(),
  pageNumber: (json['pageNumber'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  items: (json['items'] as List<dynamic>)
      .map((e) => TransactionItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$TransactionsDataModelToJson(
  TransactionsDataModel instance,
) => <String, dynamic>{
  'totalItems': instance.totalItems,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'items': instance.items,
  'totalPages': instance.totalPages,
};

TransactionItemModel _$TransactionItemModelFromJson(
  Map<String, dynamic> json,
) => TransactionItemModel(
  id: (json['id'] as num?)?.toInt(),
  createdAt: json['createdAt'] as String?,
  senderId: json['senderId'] as String?,
  sender: json['sender'] as String?,
  senderPhone: json['senderPhone'] as String?,
  senderIpa: json['senderIpa'] as String?,
  senderImage: json['senderImage'] as String?,
  receiverId: json['receiverId'] as String?,
  receiver: json['receiver'] as String?,
  receiverPhone: json['receiverPhone'] as String?,
  receiverIpa: json['receiverIpa'] as String?,
  receiverImage: json['receiverImage'] as String?,
  transactionType: json['transactionType'] as String?,
  currencyCode: json['currencyCode'] as String?,
  amount: (json['amount'] as num?)?.toDouble(),
  totalAmount: (json['totalAmount'] as num?)?.toDouble(),
  adjustedAmount: (json['adjustedAmount'] as num?)?.toDouble(),
  fees: (json['fees'] as num?)?.toDouble(),
  paymentMethod: json['paymentMethod'] as String?,
  status: json['status'] as String?,
  description: json['description'] as String?,
  referenceNumber: json['referenceNumber'] as String?,
  isSender: json['isSender'] as bool?,
  isInternalTransfer: json['isInternalTransfer'] as bool?,
  isMultiCurrency: json['isMultiCurrency'] as bool?,
  isTransactionByPhone: json['isTransactionByPhone'] as bool?,
  senderBalance: json['senderBalance'] as String?,
  transactionCategory: json['transactionCategory'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  convertedAmount: (json['convertedAmount'] as num?)?.toDouble(),
  totalConvertedAmount: (json['totalConvertedAmount'] as num?)?.toDouble(),
  convertedFees: (json['convertedFees'] as num?)?.toDouble(),
  isMerchant: json['isMerchant'] as bool?,
  receiverBalance: json['receiverBalance'] as String?,
);

Map<String, dynamic> _$TransactionItemModelToJson(
  TransactionItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'senderId': instance.senderId,
  'sender': instance.sender,
  'senderPhone': instance.senderPhone,
  'senderIpa': instance.senderIpa,
  'senderImage': instance.senderImage,
  'receiverId': instance.receiverId,
  'receiver': instance.receiver,
  'receiverPhone': instance.receiverPhone,
  'receiverIpa': instance.receiverIpa,
  'receiverImage': instance.receiverImage,
  'transactionType': instance.transactionType,
  'transactionCategory': instance.transactionCategory,
  'currencyCode': instance.currencyCode,
  'targetCurrency': instance.targetCurrency,
  'convertedAmount': instance.convertedAmount,
  'amount': instance.amount,
  'totalAmount': instance.totalAmount,
  'totalConvertedAmount': instance.totalConvertedAmount,
  'adjustedAmount': instance.adjustedAmount,
  'fees': instance.fees,
  'convertedFees': instance.convertedFees,
  'paymentMethod': instance.paymentMethod,
  'status': instance.status,
  'description': instance.description,
  'referenceNumber': instance.referenceNumber,
  'isSender': instance.isSender,
  'isInternalTransfer': instance.isInternalTransfer,
  'isMultiCurrency': instance.isMultiCurrency,
  'isMerchant': instance.isMerchant,
  'isTransactionByPhone': instance.isTransactionByPhone,
  'senderBalance': instance.senderBalance,
  'receiverBalance': instance.receiverBalance,
};
