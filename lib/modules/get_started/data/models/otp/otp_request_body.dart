import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_request_body.g.dart';

@JsonSerializable()
final class OtpRequestBody {
  OtpRequestBody({
    required this.email,
    required this.emailLang,
    required this.isForgotPassword,
  });

  @JsonKey(name: 'emailOrPhone')
  final String email;
  @JsonKey(name: 'lang')
  final String emailLang;
  final bool isForgotPassword;

  Map<String, dynamic> toJson() => _$OtpRequestBodyToJson(this);
}
