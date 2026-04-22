// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_type_item.dart';

part 'account_type_data.g.dart';

@JsonSerializable()
final class AccountTypeData {
  const AccountTypeData({
    required this.items,
    required this.totalItems,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
  });

  final int totalItems;
  final int pageNumber;
  final int pageSize;
  final List<AccountTypeItem> items;
  final int totalPages;

  factory AccountTypeData.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeDataFromJson(json);
}
