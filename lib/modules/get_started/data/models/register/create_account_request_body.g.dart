// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAccountRequestBody _$CreateAccountRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateAccountRequestBody(
  accountTypeId: (json['accountTypeId'] as num).toInt(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  categoryId: (json['categoryId'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateAccountRequestBodyToJson(
  CreateAccountRequestBody instance,
) => <String, dynamic>{
  'accountTypeId': instance.accountTypeId,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'categoryId': instance.categoryId,
};
