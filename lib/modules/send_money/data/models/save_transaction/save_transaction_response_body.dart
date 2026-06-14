import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/save_transaction_entity.dart';

part 'save_transaction_response_body.g.dart';

@JsonSerializable()
class SaveTransactionResponseBody {
  const SaveTransactionResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
    this.errors,
  });

  factory SaveTransactionResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SaveTransactionResponseBodyToJson(this);

  final int code;
  final String message;
  final SaveTransactionData data;
  final bool success;
  final List<dynamic>? errors;
}

@JsonSerializable()
class SaveTransactionData {
  const SaveTransactionData({
    required this.transactionIds,
    required this.statusCode,
    required this.isMultiCurrency,
    required this.originalAmount,
    required this.totalAmount,
    this.errors,
    this.originalCurrency,
    this.targetCurrency,
    this.convertedAmount,
    this.exchangeRate,
    this.backLink,
  });

  factory SaveTransactionData.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$SaveTransactionDataToJson(this);

  final List<int> transactionIds;
  final dynamic errors;
  final int statusCode;
  final bool isMultiCurrency;
  final String? originalCurrency;
  final String? targetCurrency;
  final double originalAmount;
  final double totalAmount;
  final double? convertedAmount;
  final double? exchangeRate;
  final String? backLink;
}

extension SaveTransactionMapper on SaveTransactionResponseBody {
  SaveTransactionEntity toEntity() {
    return SaveTransactionEntity(
      transactionIds: data.transactionIds,
      statusCode: data.statusCode,
      isMultiCurrency: data.isMultiCurrency,
      originalAmount: data.originalAmount,
      totalAmount: data.totalAmount,
      originalCurrency: data.originalCurrency,
      targetCurrency: data.targetCurrency,
      convertedAmount: data.convertedAmount,
      exchangeRate: data.exchangeRate,
      backLink: data.backLink,
    );
  }
}
