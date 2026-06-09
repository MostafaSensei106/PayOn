// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications_reponse_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotificationsReponseBody _$GetNotificationsReponseBodyFromJson(
  Map<String, dynamic> json,
) => GetNotificationsReponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  success: json['success'] as bool,
  data: json['data'],
);

Map<String, dynamic> _$GetNotificationsReponseBodyToJson(
  GetNotificationsReponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'success': instance.success,
};
