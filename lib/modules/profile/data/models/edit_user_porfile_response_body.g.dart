// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_porfile_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserPorfileResponseBody _$EditUserPorfileResponseBodyFromJson(
  Map<String, dynamic> json,
) => EditUserPorfileResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: json['data'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$EditUserPorfileResponseBodyToJson(
  EditUserPorfileResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'isSuccess': instance.isSuccess,
};
