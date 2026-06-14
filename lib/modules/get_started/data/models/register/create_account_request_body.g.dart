// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAccountRequestBody _$CreateAccountRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateAccountRequestBody(
  accountTypeId: (json['accountTypeId'] as num).toInt(),
  address: json['address'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  phoneNumber: json['phoneNumber'] as String,
  nationalId: json['nationalId'] as String,
  birthDate: json['birthDate'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CreateAccountRequestBodyToJson(
  CreateAccountRequestBody instance,
) => <String, dynamic>{
  'accountTypeId': instance.accountTypeId,
  'address': instance.address,
  'email': instance.email,
  'name': instance.name,
  'phoneNumber': instance.phoneNumber,
  'nationalId': instance.nationalId,
  'birthDate': instance.birthDate,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
