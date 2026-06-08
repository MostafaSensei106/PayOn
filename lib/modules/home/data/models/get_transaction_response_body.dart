import 'package:json_annotation/json_annotation.dart';

part 'get_transaction_response_body.g.dart';

@JsonSerializable()
class GetTransactionResponseBody {
  const GetTransactionResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
    required this.errors,
  });

  factory GetTransactionResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionResponseBodyFromJson(json);

  final int code;
  final String message;
  final TransactionsDataModel data;
  final bool success;
  final List<String> errors;
}

@JsonSerializable()
class TransactionsDataModel {
  const TransactionsDataModel({
    required this.totalItems,
    required this.pageNumber,
    required this.pageSize,
    required this.items,
    required this.totalPages,
  });

  factory TransactionsDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionsDataModelFromJson(json);

  final int totalItems;
  final int pageNumber;
  final int pageSize;
  final List<TransactionItemModel> items;
  final int totalPages;
}

@JsonSerializable()
class TransactionItemModel {
  const TransactionItemModel({
    required this.id,
    required this.amount,
    required this.currency,
    required this.type,
    required this.status,
    required this.createdAt,
    required this.description,
    required this.reference,
    required this.senderName,
    required this.receiverName,
  });

  factory TransactionItemModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemModelFromJson(json);

  final String id;
  final double amount;
  final String currency;
  final String type;
  final String status;
  final String createdAt;
  final String description;
  final String reference;
  @JsonKey(name: 'sender_name')
  final String? senderName;
  @JsonKey(name: 'receiver_name')
  final String? receiverName;
}
