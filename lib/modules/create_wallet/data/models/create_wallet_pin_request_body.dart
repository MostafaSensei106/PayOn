import 'package:json_annotation/json_annotation.dart';

part 'create_wallet_pin_request_body.g.dart';

@JsonSerializable()
class CreateWalletPinRequestBody {
  const CreateWalletPinRequestBody({
    required this.accountId,
    required this.pinHash,
  });

  factory CreateWalletPinRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateWalletPinRequestBodyFromJson(json);

  final String accountId;
  final String pinHash;

  Map<String, dynamic> toJson() => _$CreateWalletPinRequestBodyToJson(this);
}
