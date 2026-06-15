// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_providers_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProvidersResponseBody _$GetProvidersResponseBodyFromJson(
  Map<String, dynamic> json,
) => _GetProvidersResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: GetProvidersData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetProvidersResponseBodyToJson(
  _GetProvidersResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_GetProvidersData _$GetProvidersDataFromJson(Map<String, dynamic> json) =>
    _GetProvidersData(
      totalItems: (json['totalItems'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ProviderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$GetProvidersDataToJson(_GetProvidersData instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'items': instance.items,
      'totalPages': instance.totalPages,
    };
