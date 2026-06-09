import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../modules/change_password/data/change_password_request_body.dart';
import '../../../modules/forget_password/data/reset_password_request_body.dart';
import '../../../modules/get_started/data/models/account_type/account_type_response_body.dart';
import '../../../modules/get_started/data/models/register/register_request_body.dart';
import '../../../modules/get_started/data/models/register/register_response_body.dart';
import '../../../modules/get_started/data/models/send_otp/send_otp_request_body.dart';
import '../../../modules/get_started/data/models/send_otp/send_otp_response_body.dart';
import '../../../modules/get_started/data/models/verify_otp/verify_otp_request_body.dart';
import '../../../modules/get_started/data/models/verify_otp/verify_otp_response_body.dart';
import '../../../modules/home/data/models/get_wallets_response_body.dart';
import '../../../modules/login/data/models/login_request_body.dart';
import '../../../modules/login/data/models/login_response_body.dart';
import '../../../modules/profile/data/models/edit_user_porfile_response_body.dart';
import '../../../modules/profile/data/models/edit_user_profile_request_body.dart';
import '../../../modules/profile/data/models/get_user_profile_response_body.dart';
import '../../../modules/send_money/data/models/check_wallet/check_wallet_request_body.dart';
import '../../../modules/send_money/data/models/check_wallet/check_wallet_response_body.dart';
import '../../../modules/send_money/data/models/get_favorites/get_user_favorites_response_body.dart';
import '../../constants/api_routes.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiRoutes.apiBaseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  /// User Profile
  @GET(ApiRoutes.accountGetUserProfile)
  Future<GetUserProfileResponseBody> getUserProfile();

  @PUT(ApiRoutes.profileEditUserProfile)
  Future<EditUserPorfileResponseBody> editUserProfile(
    @Body() EditUserProfileRequestBody body,
  );

  /// Auth
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

  @POST(ApiRoutes.authChangePassword)
  Future<ChangePasswordRequestBody> changePassword();

  @POST(ApiRoutes.authRestPassword)
  Future<ResetPasswordRequestBody> resetPassword();

  /// Home
  @GET(ApiRoutes.accountGetWallets)
  Future<GetWalletsResponseBody> getWallets({
    @Query('page') required int page,
    @Query('size') required int size,
  });

  /// Send Mony
  @POST(ApiRoutes.transactionCheckWallet)
  Future<CheckWalletResponseBody> checkWallet(
    @Body() CheckWalletRequestBody body,
  );

  @GET(ApiRoutes.accountGetUserFavorites)
  Future<GetUserFavoritesResponseBody> getUserFavorites({
    @Query('page') required int page,
    @Query('size') required int size,
    @Query('search') required String shearch,
    @Query('isAddedByIPA') required bool isAddedByIPA,
  });
}
