// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_response_data.g.dart';

@JsonSerializable()
final class OtpResponseData {
  OtpResponseData({required this.state, required this.timestamp});

  final String state;
  final String timestamp;
  factory OtpResponseData.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseDataFromJson(json);
}
