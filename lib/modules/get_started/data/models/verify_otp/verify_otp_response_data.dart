// ignore_for_file: sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_data.g.dart';

@JsonSerializable()
final class VerifyOtpResponseData {
  VerifyOtpResponseData({required this.result});
  final bool result;

  factory VerifyOtpResponseData.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseDataFromJson(json);
}
