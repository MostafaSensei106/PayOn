import 'package:json_annotation/json_annotation.dart';

part 'set_transaction_status_request_body.g.dart';

@JsonSerializable()
class SetTransactionStatusRequestBody {
  const SetTransactionStatusRequestBody({
    required this.draftId,
    required this.isApproved,
  });

  factory SetTransactionStatusRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SetTransactionStatusRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SetTransactionStatusRequestBodyToJson(this);

  final int draftId;
  final bool isApproved;
}
