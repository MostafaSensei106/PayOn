// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type_item.g.dart';

@JsonSerializable()
final class AccountTypeItem {
  AccountTypeItem({required this.id, required this.type, this.parentId});

  final int id;
  final String type;

  /// Normal is 6 , Merchant = 7
  final int? parentId;

  factory AccountTypeItem.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeItemFromJson(json);
}
