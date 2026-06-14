import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_entity.freezed.dart';

@freezed
abstract class SendOtpEntity with _$SendOtpEntity {
  const factory SendOtpEntity({
    required String state,
    required String timestamp,
  }) = _SendOtpEntity;
}

@freezed
abstract class VerifyOtpEntity with _$VerifyOtpEntity {
  const factory VerifyOtpEntity({required bool result}) = _VerifyOtpEntity;
}
