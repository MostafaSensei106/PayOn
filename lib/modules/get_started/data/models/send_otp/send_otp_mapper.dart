import '../../../logic/entities/otp_entity.dart';
import 'send_otp_response_body.dart';

extension SendOtpResponseBodyMapper on SendOtpResponseBody {
  SendOtpEntity toEntity() {
    return SendOtpEntity(state: data.state, timestamp: data.timestamp);
  }
}
