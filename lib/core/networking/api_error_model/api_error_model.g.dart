// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIErrorModel _$APIErrorModelFromJson(Map<String, dynamic> json) =>
    APIErrorModel(
      code: (json['status'] as num).toInt(),
      message: json['title'] as String?,
    );

Map<String, dynamic> _$APIErrorModelToJson(APIErrorModel instance) =>
    <String, dynamic>{'status': instance.code, 'title': instance.message};
