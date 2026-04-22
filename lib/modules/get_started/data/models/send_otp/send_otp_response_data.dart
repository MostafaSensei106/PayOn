// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response_data.g.dart';

@JsonSerializable()
final class SendOtpResponseData {
  SendOtpResponseData({required this.state, required this.timestamp});

  final String state;
  final String timestamp;
  factory SendOtpResponseData.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseDataFromJson(json);
}
