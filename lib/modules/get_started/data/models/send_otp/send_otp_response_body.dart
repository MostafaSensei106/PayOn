// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'send_otp_response_data.dart';

part 'send_otp_response_body.g.dart';

@JsonSerializable()
final class SendOtpResponseBody {
  SendOtpResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
  });

  final int code;
  final String message;
  final SendOtpResponseData data;
  final bool success;

  factory SendOtpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseBodyFromJson(json);
}
