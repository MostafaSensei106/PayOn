import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_transaction_draft_request_body.g.dart';

@JsonSerializable()
final class CreateTransactionDraftRequestBody {
  const CreateTransactionDraftRequestBody({
    required this.senderId,
    required this.receiverId,
    required this.amount,
    required this.description,
    required this.transactionTypeId,
    required this.isTransactionByPhone,
    this.paymentId,
  });

  factory CreateTransactionDraftRequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateTransactionDraftRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateTransactionDraftRequestBodyToJson(this);

  final String senderId;
  final String receiverId;
  final String? paymentId;
  final double amount;
  final String description;
  final int transactionTypeId;
  final bool isTransactionByPhone;
}
