// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../login/data/models/user_data.dart';

part 'register_response_body.g.dart';

@JsonSerializable()
final class RegisterResponseBody {
  const RegisterResponseBody({
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

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseBodyFromJson(json);
}
