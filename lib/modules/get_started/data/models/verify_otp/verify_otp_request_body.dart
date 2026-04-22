import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request_body.g.dart';

@JsonSerializable()
final class VerifyOtpRequestBody {
  VerifyOtpRequestBody({required this.email, required this.code});

  @JsonKey(name: 'emailOrPhone')
  final String email;
  final String code;

  Map<String, dynamic> toJson() => _$VerifyOtpRequestBodyToJson(this);
}
