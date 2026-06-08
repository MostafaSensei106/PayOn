// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_wallet_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheackWalletResponseBody _$CheackWalletResponseBodyFromJson(
  Map<String, dynamic> json,
) => CheackWalletResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: WalletData.fromJson(json['data'] as Map<String, dynamic>),
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  success: json['success'] as bool,
);

Map<String, dynamic> _$CheackWalletResponseBodyToJson(
  CheackWalletResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'success': instance.success,
};

WalletData _$WalletDataFromJson(Map<String, dynamic> json) => WalletData(
  name: json['name'] as String,
  reciverId: json['reciverId'] as String,
  currencyId: (json['currencyId'] as num).toInt(),
  img: json['img'] as String,
  founded: json['founded'] as bool,
);

Map<String, dynamic> _$WalletDataToJson(WalletData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'reciverId': instance.reciverId,
      'currencyId': instance.currencyId,
      'img': instance.img,
      'founded': instance.founded,
    };
