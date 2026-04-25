import 'package:json_annotation/json_annotation.dart';

part 'change_password_request_body.g.dart';

@JsonSerializable()
final class ChangePasswordRequestBody {
  const ChangePasswordRequestBody({
    required this.oldPassword,
    required this.newPassword,
  });

  factory ChangePasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestBodyFromJson(json);

  @JsonKey(name: 'oldPass')
  final String oldPassword;
  @JsonKey(name: 'newPass')
  final String newPassword;

  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);
}
