import 'package:json_annotation/json_annotation.dart';
part 'check_wallet_pin_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class CheckWalletPinRequestBody {
  const CheckWalletPinRequestBody({
    required this.walletId,
    required this.pinHash,
    this.draftIds,
    this.senderId,
    this.transactionTypeId,
  });

  factory CheckWalletPinRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CheckWalletPinRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckWalletPinRequestBodyToJson(this);

  @JsonKey(name: 'accountId')
  final String walletId;
  final String pinHash;
  final List<int>? draftIds;
  final String? senderId;
  final int? transactionTypeId;
}
