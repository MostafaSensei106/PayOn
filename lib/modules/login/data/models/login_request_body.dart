import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
final class LoginRequestBody {
  LoginRequestBody({required this.userName, required this.password});
  @JsonKey(name: 'username')
  final String userName;
  final String password;

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
