// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_favorites_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserFavoritesResponseBody _$GetUserFavoritesResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetUserFavoritesResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: FavoritesData.fromJson(json['data'] as Map<String, dynamic>),
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  success: json['success'] as bool,
);

Map<String, dynamic> _$GetUserFavoritesResponseBodyToJson(
  GetUserFavoritesResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'success': instance.success,
};

FavoritesData _$FavoritesDataFromJson(Map<String, dynamic> json) =>
    FavoritesData(
      totalItems: (json['totalItems'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      items: json['items'] as List<dynamic>,
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$FavoritesDataToJson(FavoritesData instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'items': instance.items,
      'totalPages': instance.totalPages,
    };
