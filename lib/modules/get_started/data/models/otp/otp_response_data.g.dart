// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpResponseData _$OtpResponseDataFromJson(Map<String, dynamic> json) =>
    OtpResponseData(
      state: json['state'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$OtpResponseDataToJson(OtpResponseData instance) =>
    <String, dynamic>{'state': instance.state, 'timestamp': instance.timestamp};
