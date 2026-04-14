import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../modules/get_started/data/models/account_type/account_type_response_body.dart';
import '../../../modules/get_started/data/models/register/register_request_body.dart';
import '../../../modules/get_started/data/models/register/register_response_body.dart';
import '../../../modules/get_started/data/models/send_otp/send_otp_request_body.dart';
import '../../../modules/get_started/data/models/send_otp/send_otp_response_body.dart';
import '../../../modules/get_started/data/models/verify_otp/verify_otp_request_body.dart';
import '../../../modules/get_started/data/models/verify_otp/verify_otp_response_body.dart';
import '../../../modules/login/data/models/login_request_body.dart';
import '../../../modules/login/data/models/login_response_body.dart';
import '../../constants/api_routes.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiRoutes.apiBaseURL)
abstract class APIService {
  factory APIService(Dio dio, {String? baseUrl}) = _APIService;

  @POST(ApiRoutes.authLogin)
  Future<LoginResponseBody> login(@Body() LoginRequestBody body);

  @GET(ApiRoutes.accountGetAccountTypes)
  Future<AccountTypeResponseBody> getAccountTypes();

  @POST(ApiRoutes.authRegister)
  Future<RegisterResponseBody> register(@Body() RegisterRequestBody body);

  @POST(ApiRoutes.authSendOTP)
  Future<SendOtpResponseBody> sendOTP(@Body() SendOtpRequestBody body);

  @POST(ApiRoutes.authVerifyOTP)
  Future<VerifyOtpResponseBody> verifyOTP(@Body() VerifyOtpRequestBody body);

  @POST(ApiRoutes.accountUploadFiles)
  @MultiPart()
  Future<void> uploadFiles(
    @Part(name: 'File') File file,
    @Part(name: 'AccId') String accId,
    @Part(name: 'RequierdDocId') int requiredDocId,
  );
}
