import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_transactions_params.freezed.dart';

@freezed
abstract class GetTransactionsParams with _$GetTransactionsParams {
  const factory GetTransactionsParams({
    double? minAmount,
    double? maxAmount,
    int? transactionTypeId,
    String? fromDate,
    String? toDate,
    String? searchQuery,
    String? accountId,
    int? currencyId,
    @Default(1) int page,
    @Default(20) int size,
  }) = _GetTransactionsParams;
}
