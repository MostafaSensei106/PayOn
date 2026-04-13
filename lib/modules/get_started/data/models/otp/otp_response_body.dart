// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'otp_response_data.dart';

part 'otp_response_body.g.dart';

@JsonSerializable()
final class OtpResponseBody {
  OtpResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
  });

  final int code;
  final String message;
  final OtpResponseData data;
  final bool success;

  factory OtpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseBodyFromJson(json);
}
