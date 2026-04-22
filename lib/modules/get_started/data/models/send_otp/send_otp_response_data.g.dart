// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpResponseData _$SendOtpResponseDataFromJson(Map<String, dynamic> json) =>
    SendOtpResponseData(
      state: json['state'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$SendOtpResponseDataToJson(
  SendOtpResponseData instance,
) => <String, dynamic>{
  'state': instance.state,
  'timestamp': instance.timestamp,
};
