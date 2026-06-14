import 'package:json_annotation/json_annotation.dart';

part 'save_transaction_request_body.g.dart';

@JsonSerializable()
class SaveTransactionRequestBody {
  const SaveTransactionRequestBody({
    required this.draftids,
    required this.walletId,
    required this.otp,
    required this.isAcceptRequest,
  });

  factory SaveTransactionRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SaveTransactionRequestBodyToJson(this);

  final List<int> draftids;
  @JsonKey(name: 'senderId')
  final String walletId;
  final String otp;
  final bool isAcceptRequest;
}
