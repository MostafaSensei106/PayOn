import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request_body.g.dart';

@JsonSerializable()
final class ResetPasswordRequestBody {

  const ResetPasswordRequestBody({
    required this.emailOrPhone,
    required this.otp,
    required this.newPassword,
  });

  factory ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestBodyFromJson(json);
  final String emailOrPhone;
  final String otp;
  final String newPassword;

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}
