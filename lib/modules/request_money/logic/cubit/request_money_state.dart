import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/logic/entity/transaction_entity.dart';

part 'request_money_state.freezed.dart';

@freezed
sealed class RequestMoneyState with _$RequestMoneyState {
  const factory RequestMoneyState.initial() = _Initial;
  const factory RequestMoneyState.loading() = Loading;
  const factory RequestMoneyState.success({
    required List<TransactionItemEntity> requests,
  }) = Success;
  const factory RequestMoneyState.failure({required String message}) = Failure;
}
