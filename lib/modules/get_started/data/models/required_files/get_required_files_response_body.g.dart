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
  data: RequiredFilesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetRequiredFilesResponseBodyToJson(
  GetRequiredFilesResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'success': instance.success,
  'data': instance.data,
};

RequiredFilesData _$RequiredFilesDataFromJson(Map<String, dynamic> json) =>
    RequiredFilesData(
      totalItems: (json['totalItems'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => RequiredFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$RequiredFilesDataToJson(RequiredFilesData instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'items': instance.items,
    };

RequiredFileModel _$RequiredFileModelFromJson(Map<String, dynamic> json) =>
    RequiredFileModel(
      id: (json['id'] as num).toInt(),
      fileName: json['fileName'] as String,
      isMandatory: json['isMandatory'] as bool,
    );

Map<String, dynamic> _$RequiredFileModelToJson(RequiredFileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'isMandatory': instance.isMandatory,
    };
