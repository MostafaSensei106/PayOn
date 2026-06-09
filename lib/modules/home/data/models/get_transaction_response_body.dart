import 'package:json_annotation/json_annotation.dart';

import '../../logic/entity/transaction_entity.dart';

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
    required this.createdAt,
    required this.senderId,
    required this.sender,
    required this.senderPhone,
    required this.senderIpa,
    required this.senderImage,
    required this.receiverId,
    required this.receiver,
    required this.receiverPhone,
    required this.receiverIpa,
    required this.receiverImage,
    required this.transactionType,
    required this.currencyCode,
    required this.amount,
    required this.totalAmount,
    required this.adjustedAmount,
    required this.fees,
    required this.paymentMethod,
    required this.status,
    required this.description,
    required this.referenceNumber,
    required this.isSender,
    required this.isInternalTransfer,
    required this.isMultiCurrency,
    required this.isTransactionByPhone,
    required this.senderBalance,
    this.transactionCategory,
    this.targetCurrency,
    this.convertedAmount,
    this.totalConvertedAmount,
    this.convertedFees,
    this.isMerchant,
    this.receiverBalance,
  });

  factory TransactionItemModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemModelFromJson(json);

  final int? id;
  final String? createdAt;
  final String? senderId;
  final String? sender;
  final String? senderPhone;
  final String? senderIpa;
  final String? senderImage;
  final String? receiverId;
  final String? receiver;
  final String? receiverPhone;
  final String? receiverIpa;
  final String? receiverImage;
  final String? transactionType;
  final String? transactionCategory;
  final String? currencyCode;
  final String? targetCurrency;
  final double? convertedAmount;
  final double? amount;
  final double? totalAmount;
  final double? totalConvertedAmount;
  final double? adjustedAmount;
  final double? fees;
  final double? convertedFees;
  final String? paymentMethod;
  final String? status;
  final String? description;
  final String? referenceNumber;
  final bool? isSender;
  final bool? isInternalTransfer;
  final bool? isMultiCurrency;
  final bool? isMerchant;
  final bool? isTransactionByPhone;
  final String? senderBalance;
  final String? receiverBalance;
}

extension GetTransactionResponseBodyMapper on GetTransactionResponseBody {
  GetTransactionEntity toEntity() {
    return GetTransactionEntity(
      code: code,
      message: message,
      data: data.toEntity(),
      success: success,
      errors: errors,
    );
  }
}

extension TransactionsDataModelMapper on TransactionsDataModel {
  TransactionsDataEntity toEntity() {
    return TransactionsDataEntity(
      totalItems: totalItems,
      pageNumber: pageNumber,
      pageSize: pageSize,
      items: items.map((e) => e.toEntity()).toList(),
      totalPages: totalPages,
    );
  }
}

extension TransactionItemModelMapper on TransactionItemModel {
  TransactionItemEntity toEntity() {
    return TransactionItemEntity(
      id: id ?? 0,
      createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
      senderId: senderId ?? '',
      sender: sender ?? '',
      senderPhone: senderPhone ?? '',
      senderIpa: senderIpa ?? '',
      senderImage: senderImage ?? '',
      receiverId: receiverId ?? '',
      receiver: receiver ?? '',
      receiverPhone: receiverPhone ?? '',
      receiverIpa: receiverIpa ?? '',
      receiverImage: receiverImage ?? '',
      transactionType: transactionType ?? '',
      currencyCode: currencyCode ?? '',
      amount: amount ?? 0.0,
      totalAmount: totalAmount ?? 0.0,
      adjustedAmount: adjustedAmount ?? 0.0,
      fees: fees ?? 0.0,
      paymentMethod: paymentMethod ?? '',
      status: status ?? '',
      description: description ?? '',
      referenceNumber: referenceNumber ?? '',
      isSender: isSender ?? false,
      isInternalTransfer: isInternalTransfer ?? false,
      isMultiCurrency: isMultiCurrency ?? false,
      isTransactionByPhone: isTransactionByPhone ?? false,
      senderBalance: senderBalance ?? '',
    );
  }
}
