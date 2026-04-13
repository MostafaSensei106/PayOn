// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type_item.g.dart';

@JsonSerializable()
final class AccountTypeItem {
  AccountTypeItem({required this.id, required this.type});

  final int id;
  final String type;

  factory AccountTypeItem.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeItemFromJson(json);
}
