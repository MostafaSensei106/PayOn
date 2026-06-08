import 'package:json_annotation/json_annotation.dart';

part 'check_wallet_request_body.g.dart';

@JsonSerializable()
class CheckWalletRequestBody {
  CheckWalletRequestBody({required this.userInfo});

  factory CheckWalletRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CheckWalletRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckWalletRequestBodyToJson(this);

  final String userInfo;
}
