// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import '../../logic/entities/login_entity.dart';
import 'user_data.dart';

part 'login_response_body.g.dart';

@JsonSerializable()
final class LoginResponseBody {
  const LoginResponseBody({
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

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

extension LoginResponseBodyMapper on LoginResponseBody {
  LoginEntity toEntity() {
    return LoginEntity(token: userData.token);
  }
}
