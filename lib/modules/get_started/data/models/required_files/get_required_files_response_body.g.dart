// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_required_files_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRequiredFilesResponseBody _$GetRequiredFilesResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetRequiredFilesResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => RequiredFileModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetRequiredFilesResponseBodyToJson(
  GetRequiredFilesResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'success': instance.success,
  'data': instance.data,
};

RequiredFileModel _$RequiredFileModelFromJson(Map<String, dynamic> json) =>
    RequiredFileModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      isRequired: json['isRequired'] as bool,
    );

Map<String, dynamic> _$RequiredFileModelToJson(RequiredFileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isRequired': instance.isRequired,
    };
