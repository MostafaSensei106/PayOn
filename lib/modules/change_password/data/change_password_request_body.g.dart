// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequestBody _$ChangePasswordRequestBodyFromJson(
  Map<String, dynamic> json,
) => ChangePasswordRequestBody(
  oldPassword: json['oldPass'] as String,
  newPassword: json['newPass'] as String,
);

Map<String, dynamic> _$ChangePasswordRequestBodyToJson(
  ChangePasswordRequestBody instance,
) => <String, dynamic>{
  'oldPass': instance.oldPassword,
  'newPass': instance.newPassword,
};
