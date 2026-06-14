import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_transaction_params.freezed.dart';

@freezed
abstract class CreateTransactionParams with _$CreateTransactionParams {
  const factory CreateTransactionParams({
    required String senderId,
    required String receiverId,
    required double amount, required String description, String? paymentId,
    @Default(6) int transactionTypeId,
    @Default(true) bool isTransactionByPhone,
  }) = _CreateTransactionParams;
}
