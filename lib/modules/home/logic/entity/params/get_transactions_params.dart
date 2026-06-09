import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_transactions_params.freezed.dart';

@freezed
abstract class GetTransactionsParams with _$GetTransactionsParams {
  const factory GetTransactionsParams({
    @Default(0.0) double minAmount,
    @Default(0.0) double maxAmount,
    @Default(0) int transactionTypeId,
    @Default('') String fromDate,
    @Default('') String toDate,
    @Default('') String searchQuery,
    @Default('') String accountId,
    @Default(0) int currencyId,
    @Default(1) int page,
    @Default(20) int size,
  }) = _GetTransactionsParams;
}
