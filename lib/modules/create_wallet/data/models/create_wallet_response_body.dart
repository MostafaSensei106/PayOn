import 'package:json_annotation/json_annotation.dart';

part 'create_wallet_response_body.g.dart';

@JsonSerializable()
class CreateWalletResponseBody {
  const CreateWalletResponseBody({
    required this.code,
    required this.message,
    required this.success,
    this.data,
  });

  factory CreateWalletResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CreateWalletResponseBodyFromJson(json);

  final int code;
  final String message;
  final bool success;
  final dynamic data;

  Map<String, dynamic> toJson() => _$CreateWalletResponseBodyToJson(this);
}
