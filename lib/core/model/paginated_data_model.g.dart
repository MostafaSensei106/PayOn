// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedDataModel<T> _$PaginatedDataModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => PaginatedDataModel<T>(
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  currentPage: (json['currentPage'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$PaginatedDataModelToJson<T>(
  PaginatedDataModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data.map(toJsonT).toList(),
  'currentPage': instance.currentPage,
  'totalPages': instance.totalPages,
};
