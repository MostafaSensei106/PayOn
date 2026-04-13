// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

import 'verify_otp_response_data.dart';

part 'verify_otp_response_body.g.dart';

@JsonSerializable()
final class VerifyOtpResponseBody {
  VerifyOtpResponseBody({
    required this.code,
    required this.data,
    required this.message,
    required this.success,
  });

  final int code;
  final VerifyOtpResponseData data;
  final String message;
  final bool success;

  factory VerifyOtpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseBodyFromJson(json);
}
