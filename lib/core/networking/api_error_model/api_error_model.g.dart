// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIErrorModel _$APIErrorModelFromJson(Map<String, dynamic> json) =>
    APIErrorModel(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$APIErrorModelToJson(APIErrorModel instance) =>
    <String, dynamic>{'code': instance.code, 'message': instance.message};
