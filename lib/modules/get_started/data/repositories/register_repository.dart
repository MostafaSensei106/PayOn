import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/account_type/account_type_response_body.dart';
import '../models/register/register_request_body.dart';
import '../models/register/register_response_body.dart';
import '../models/send_otp/send_otp_request_body.dart';
import '../models/send_otp/send_otp_response_body.dart';
import '../models/verify_otp/verify_otp_request_body.dart';
import '../models/verify_otp/verify_otp_response_body.dart';
import 'base_register_repository.dart';

class RegisterRepository implements BaseRegisterRepository {
  RegisterRepository(this._apiService);

  final APIService _apiService;

  @override
  Future<APIResult<AccountTypeResponseBody>> getAccountTypes() async {
    try {
      final response = await _apiService.getAccountTypes();
      return APIResult<AccountTypeResponseBody>.success(data: response);
    } catch (error) {
      return APIResult<AccountTypeResponseBody>.failure(
        errorHandler: APIErrorHandler.handle(error),
      );
    }
  }

  @override
  Future<APIResult<RegisterResponseBody>> register(
    RegisterRequestBody body,
  ) async {
    try {
      final response = await _apiService.register(body);
      return APIResult<RegisterResponseBody>.success(data: response);
    } catch (error) {
      return APIResult.failure(errorHandler: APIErrorHandler.handle(error));
    }
  }

  @override
  Future<APIResult<SendOtpResponseBody>> sendOTP(
    SendOtpRequestBody body,
  ) async {
    try {
      final response = await _apiService.sendOTP(body);
      return APIResult<SendOtpResponseBody>.success(data: response);
    } catch (error) {
      return APIResult.failure(errorHandler: APIErrorHandler.handle(error));
    }
  }

  @override
  Future<APIResult<VerifyOtpResponseBody>> verifyOTP(
    VerifyOtpRequestBody body,
  ) async {
    try {
      final response = await _apiService.verifyOTP(body);
      return APIResult<VerifyOtpResponseBody>.success(data: response);
    } catch (error) {
      return APIResult.failure(errorHandler: APIErrorHandler.handle(error));
    }
  }
}
