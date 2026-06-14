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
    required String currencyCode,
    required double amount,
    required double totalAmount,
    required double adjustedAmount,
    required double fees,
    required String paymentMethod,
    required String status,
    required String description,
    required String referenceNumber,
    required bool isSender,
    required bool isInternalTransfer,
    required bool isMultiCurrency,
    required bool isTransactionByPhone,
    required String senderBalance,
  }) = _TransactionItemEntity;

  factory TransactionItemEntity.placeholder() => TransactionItemEntity(
    id: 0,
    createdAt: DateTime.now(),
    senderId: '',
    sender: 'Sender Name',
    senderPhone: '',
    senderIpa: '',
    senderImage: '',
    receiverId: '',
    receiver: 'Receiver Name',
    receiverPhone: '',
    receiverIpa: '',
    receiverImage: '',
    transactionType: 'Transfer',
    currencyCode: 'EGP',
    amount: 0,
    totalAmount: 0,
    adjustedAmount: 0,
    fees: 0,
    paymentMethod: '',
    status: 'Success',
    description: 'Transaction Description',
    referenceNumber: '',
    isSender: true,
    isInternalTransfer: true,
    isMultiCurrency: false,
    isTransactionByPhone: false,
    senderBalance: '0',
  );
}
