// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
final class UserDataModel {
  const UserDataModel({required this.token, this.accountID});
  final String token;
  @JsonKey(name: 'accountId')
  final String? accountID;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
