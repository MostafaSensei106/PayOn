import '../../../../../core/constants/types/type_def.dart';
import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/send_otp/send_otp_request_body.dart';
import '../../models/send_otp/send_otp_response_body.dart';
import '../../models/verify_otp/verify_otp_request_body.dart';
import '../../models/verify_otp/verify_otp_response_body.dart';
import 'base_otp_repository.dart';

final class OtpRepository implements BaseOtpRepository {
  OtpRepository(this._apiService);

  final ApiService _apiService;
  @override
  Future<ApiResult<SendOtpResponseBody>> sendOTP(
    SendOtpRequestBody body,
  ) async => ApiExecutor.execute<SendOtpResponseBody>(
    action: () => _apiService.sendOTP(body),
  );

  @override
  Future<ApiResult<VerifyOtpResponseBody>> verifyOTP(
    VerifyOtpRequestBody body,
  ) async => ApiExecutor.execute<VerifyOtpResponseBody>(
    action: () => _apiService.verifyOTP(body),
  );
}
