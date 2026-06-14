import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_request_body.g.dart';

@JsonSerializable()
final class SendOtpRequestBody {
  SendOtpRequestBody({
    required this.phone,
    required this.emailLang,
    required this.isForgotPassword,
  });

  @JsonKey(name: 'emailOrPhone')
  final String phone;
  @JsonKey(name: 'lang')
  final String emailLang;
  final bool isForgotPassword;

  Map<String, dynamic> toJson() => _$SendOtpRequestBodyToJson(this);
}
