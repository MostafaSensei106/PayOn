// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'user_data_model.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  LoginResponseModel({
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

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
