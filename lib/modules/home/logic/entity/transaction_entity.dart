import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_entity.freezed.dart';

@freezed
abstract class GetTransactionEntity with _$GetTransactionEntity {
  const factory GetTransactionEntity({
    required int code,
    required String message,
    required TransactionsDataEntity data,
    required bool success,
    required List<String> errors,
  }) = _GetTransactionEntity;
}

@freezed
abstract class TransactionsDataEntity with _$TransactionsDataEntity {
  const factory TransactionsDataEntity({
    required int totalItems,
    required int pageNumber,
    required int pageSize,
    required List<TransactionItemEntity> items,
    required int totalPages,
  }) = _TransactionsDataEntity;
}

@freezed
abstract class TransactionItemEntity with _$TransactionItemEntity {
  const factory TransactionItemEntity({
    required int id,
    required DateTime createdAt,
    required String senderId,
    required String sender,
    required String senderPhone,
    required String senderIpa,
    required String senderImage,
    required String receiverId,
    required String receiver,
    required String receiverPhone,
    required String receiverIpa,
    required String receiverImage,
    required String transactionType,
    String? transactionCategory,
    required String currencyCode,
    String? targetCurrency,
    double? convertedAmount,
    required double amount,
    required double totalAmount,
    double? totalConvertedAmount,
    required double adjustedAmount,
    required double fees,
    double? convertedFees,
    required String paymentMethod,
    required String status,
    required String description,
    required String referenceNumber,
    required bool isSender,
    required bool isInternalTransfer,
    required bool isMultiCurrency,
    bool? isMerchant,
    required bool isTransactionByPhone,
    required String senderBalance,
    String? receiverBalance,
  }) = _TransactionItemEntity;
}
