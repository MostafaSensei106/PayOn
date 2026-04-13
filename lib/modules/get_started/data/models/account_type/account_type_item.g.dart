// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountTypeItem _$AccountTypeItemFromJson(Map<String, dynamic> json) =>
    AccountTypeItem(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$AccountTypeItemToJson(AccountTypeItem instance) =>
    <String, dynamic>{'id': instance.id, 'type': instance.type};
