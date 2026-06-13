// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBody _$RegisterRequestBodyFromJson(Map<String, dynamic> json) =>
    RegisterRequestBody(
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      name: json['name'] as String,
      birthDate: json['birthDate'] as String,
      gender: json['gender'] as String,
      password: json['password'] as String,
      isPhone: json['isPhone'] as bool,
      nationalityCode: (json['nationalityCode'] as num).toInt(),
      country: (json['country'] as num).toInt(),
      cityId: (json['cityId'] as num).toInt(),
      referralCode: json['referralCode'] as String?,
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
  RegisterRequestBody instance,
) => <String, dynamic>{
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'name': instance.name,
  'birthDate': instance.birthDate,
  'gender': instance.gender,
  'password': instance.password,
  'isPhone': instance.isPhone,
  'nationalityCode': instance.nationalityCode,
  'country': instance.country,
  'cityId': instance.cityId,
  'referralCode': instance.referralCode,
};
