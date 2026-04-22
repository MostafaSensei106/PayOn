// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountTypeItem _$AccountTypeItemFromJson(Map<String, dynamic> json) =>
    AccountTypeItem(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      parentId: (json['parentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AccountTypeItemToJson(AccountTypeItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'parentId': instance.parentId,
    };
