// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'user_data.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  LoginResponse({
    required this.code,
    required this.message,
    required this.userData,
    required this.success,
  });

  final int code;
  final String message;
  @JsonKey(name: 'data')
  final UserDataModel userData;
  final bool success;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
