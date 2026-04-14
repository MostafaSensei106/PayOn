// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_type_data.dart';

part 'account_type_response_body.g.dart';

@JsonSerializable()
final class AccountTypeResponseBody {
  const AccountTypeResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
  });

  final int code;
  final String message;
  final List<AccountTypeData> data;
  final bool success;

  factory AccountTypeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeResponseBodyFromJson(json);
}
