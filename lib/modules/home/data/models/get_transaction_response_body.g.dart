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
  id: json['id'] as String,
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String,
  type: json['type'] as String,
  status: json['status'] as String,
  createdAt: json['createdAt'] as String,
  description: json['description'] as String,
  reference: json['reference'] as String,
  senderName: json['sender_name'] as String?,
  receiverName: json['receiver_name'] as String?,
);

Map<String, dynamic> _$TransactionItemModelToJson(
  TransactionItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'currency': instance.currency,
  'type': instance.type,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'description': instance.description,
  'reference': instance.reference,
  'sender_name': instance.senderName,
  'receiver_name': instance.receiverName,
};
