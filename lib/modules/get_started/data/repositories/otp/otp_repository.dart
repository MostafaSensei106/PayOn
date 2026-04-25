import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_result/api_result.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/send_otp/send_otp_request_body.dart';
import '../../models/send_otp/send_otp_response_body.dart';
import '../../models/verify_otp/verify_otp_request_body.dart';
import '../../models/verify_otp/verify_otp_response_body.dart';
import 'base_otp_repository.dart';

final class OtpRepository implements BaseOtpRepository {
  OtpRepository(this._apiService);

  final APIService _apiService;
  @override
  Future<APIResult<SendOtpResponseBody>> sendOTP(
    SendOtpRequestBody body,
  ) async => ApiExecutor.execute<SendOtpResponseBody>(
    call: () => _apiService.sendOTP(body),
  );

  @override
  Future<APIResult<VerifyOtpResponseBody>> verifyOTP(
    VerifyOtpRequestBody body,
  ) async => ApiExecutor.execute<VerifyOtpResponseBody>(
    call: () => _apiService.verifyOTP(body),
  );
}
