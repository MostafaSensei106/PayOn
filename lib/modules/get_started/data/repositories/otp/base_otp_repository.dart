import '../../../../../core/constants/types/type_def.dart';
import '../../models/send_otp/send_otp_request_body.dart';
import '../../models/send_otp/send_otp_response_body.dart';
import '../../models/verify_otp/verify_otp_request_body.dart';
import '../../models/verify_otp/verify_otp_response_body.dart';

abstract interface class BaseOtpRepository {
  Future<ApiResult<SendOtpResponseBody>> sendOTP(SendOtpRequestBody body);
  Future<ApiResult<VerifyOtpResponseBody>> verifyOTP(VerifyOtpRequestBody body);
}
