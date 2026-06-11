import 'package:json_annotation/json_annotation.dart';

part 'create_wallet_pin_response_body.g.dart';

@JsonSerializable()
class CreateWalletPinResponseBody {
  const CreateWalletPinResponseBody({
    required this.code,
    required this.message,
    required this.success,
    this.data,
  });

  factory CreateWalletPinResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CreateWalletPinResponseBodyFromJson(json);

  final int code;
  final String message;
  final bool success;
  final dynamic data;

  Map<String, dynamic> toJson() => _$CreateWalletPinResponseBodyToJson(this);
}
