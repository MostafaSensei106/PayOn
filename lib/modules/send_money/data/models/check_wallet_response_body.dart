import 'package:json_annotation/json_annotation.dart';

part 'check_wallet_response_body.g.dart';

@JsonSerializable()
class CheackWalletResponseBody {
  CheackWalletResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.errors,
    required this.success,
  });

  factory CheackWalletResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CheackWalletResponseBodyFromJson(json);

  final int code;
  final String message;
  final WalletData data;
  final List<String> errors;
  final bool success;
}

@JsonSerializable()
class WalletData {
  WalletData({
    required this.name,
    required this.reciverId,
    required this.currencyId,
    required this.img,
    required this.founded,
  });

  factory WalletData.fromJson(Map<String, dynamic> json) =>
      _$WalletDataFromJson(json);

  final String name;
  final String reciverId;
  final int currencyId;
  final String img;
  final bool founded;
}
