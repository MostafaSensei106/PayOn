import '../../../../core/networking/api_result/api_result.dart';
import '../models/account_type/account_type_response_body.dart';
import '../models/register/register_request_body.dart';
import '../models/register/register_response_body.dart';
import '../models/send_otp/send_otp_request_body.dart';
import '../models/send_otp/send_otp_response_body.dart';
import '../models/verify_otp/verify_otp_request_body.dart';
import '../models/verify_otp/verify_otp_response_body.dart';

abstract class BaseRegisterRepository {
  Future<APIResult<AccountTypeResponseBody>> getAccountTypes();

  Future<APIResult<RegisterResponseBody>> register(RegisterRequestBody body);

  Future<APIResult<SendOtpResponseBody>> sendOTP(SendOtpRequestBody body);

  Future<APIResult<VerifyOtpResponseBody>> verifyOTP(VerifyOtpRequestBody body);
}
