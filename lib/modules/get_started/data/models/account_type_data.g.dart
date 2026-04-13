// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountTypeData _$AccountTypeDataFromJson(Map<String, dynamic> json) =>
    AccountTypeData(
      items: (json['items'] as List<dynamic>)
          .map((e) => AccountTypeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: (json['totalItems'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$AccountTypeDataToJson(AccountTypeData instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'items': instance.items,
      'totalPages': instance.totalPages,
    };
