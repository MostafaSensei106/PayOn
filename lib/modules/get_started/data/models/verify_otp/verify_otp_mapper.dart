import '../../../logic/entities/otp_entity.dart';
import 'verify_otp_response_body.dart';

extension VerifyOtpResponseBodyMapper on VerifyOtpResponseBody {
  VerifyOtpEntity toEntity() {
    return VerifyOtpEntity(result: data.result);
  }
}
