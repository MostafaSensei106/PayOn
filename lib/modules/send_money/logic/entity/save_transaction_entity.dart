import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_transaction_entity.freezed.dart';

@freezed
abstract class SaveTransactionEntity with _$SaveTransactionEntity {
  const factory SaveTransactionEntity({
    required List<int> transactionIds,
    required int statusCode,
    required bool isMultiCurrency,
    required double originalAmount,
    required double totalAmount,
    String? originalCurrency,
    String? targetCurrency,
    double? convertedAmount,
    double? exchangeRate,
    String? backLink,
  }) = _SaveTransactionEntity;
}
