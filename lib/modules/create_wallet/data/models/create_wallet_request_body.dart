import 'package:json_annotation/json_annotation.dart';

part 'create_wallet_request_body.g.dart';

@JsonSerializable()
class CreateWalletRequestBody {
  const CreateWalletRequestBody({
    required this.accountId,
    required this.ipa,
    required this.currencyId,
  });

  factory CreateWalletRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateWalletRequestBodyFromJson(json);

  final String accountId;
  final String ipa;
  final int currencyId;

  Map<String, dynamic> toJson() => _$CreateWalletRequestBodyToJson(this);
}
