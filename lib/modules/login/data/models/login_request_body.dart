import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  LoginRequestBody({required this.username, required this.password});
  final String username;
  final String password;

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
