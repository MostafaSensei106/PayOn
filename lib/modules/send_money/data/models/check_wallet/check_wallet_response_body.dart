import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/check_wallet_entity.dart';

part 'check_wallet_response_body.g.dart';

@JsonSerializable()
class CheckWalletResponseBody {
  CheckWalletResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.errors,
    required this.success,
  });

  factory CheckWalletResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CheckWalletResponseBodyFromJson(json);

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

extension CheckWalletResponseMapper on CheckWalletResponseBody {
  CheckWalletEntity toEntity() {
    return CheckWalletEntity(
      name: data.name,
      reciverId: data.reciverId,
      currencyId: data.currencyId,
      img: data.img,
      founded: data.founded,
    );
  }
}
