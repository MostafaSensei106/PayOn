import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../modules/change_password/data/change_password_request_body.dart';
import '../../../modules/create_wallet/data/models/create_wallet_pin_request_body.dart';
import '../../../modules/create_wallet/data/models/create_wallet_pin_response_body.dart';
import '../../../modules/create_wallet/data/models/create_wallet_request_body.dart';
import '../../../modules/create_wallet/data/models/create_wallet_response_body.dart';
import '../../../modules/create_wallet/data/models/get_currencies_response_body.dart';
import '../../../modules/forget_password/data/reset_password_request_body.dart';
import '../../../modules/get_started/data/models/account_type/account_type_response_body.dart';
import '../../../modules/get_started/data/models/get_all_countries/get_all_countries_response_body.dart';
import '../../../modules/get_started/data/models/register/create_account_request_body.dart';
import '../../../modules/get_started/data/models/register/create_account_response_body.dart';
import '../../../modules/get_started/data/models/register/register_request_body.dart';
import '../../../modules/get_started/data/models/register/register_response_body.dart';
import '../../../modules/get_started/data/models/required_files/get_required_files_response_body.dart';
import '../../../modules/get_started/data/models/send_otp/send_otp_request_body.dart';
import '../../../modules/get_started/data/models/send_otp/send_otp_response_body.dart';
import '../../../modules/get_started/data/models/verify_otp/verify_otp_request_body.dart';
import '../../../modules/get_started/data/models/verify_otp/verify_otp_response_body.dart';
import '../../../modules/home/data/models/get_transaction_response_body.dart';
import '../../../modules/home/data/models/get_wallets_response_body.dart';
import '../../../modules/login/data/models/login_request_body.dart';
import '../../../modules/login/data/models/login_response_body.dart';
import '../../../modules/profile/data/models/edit_user_porfile_response_body.dart';
import '../../../modules/profile/data/models/edit_user_profile_request_body.dart';
import '../../../modules/profile/data/models/get_user_profile_response_body.dart';
import '../../../modules/request_money/data/models/get_pending_reward_users_response_body.dart';
import '../../../modules/send_money/data/models/check_wallet/check_wallet_request_body.dart';
import '../../../modules/send_money/data/models/check_wallet/check_wallet_response_body.dart';
import '../../../modules/send_money/data/models/check_wallet_pin/check_wallet_pin_request_body.dart';
import '../../../modules/send_money/data/models/check_wallet_pin/check_wallet_pin_rsponse_body.dart';
import '../../../modules/send_money/data/models/create_transaction_draft/create_transaction_draft_request_body.dart';
import '../../../modules/send_money/data/models/create_transaction_draft/create_transaction_draft_response_body.dart';
import '../../../modules/send_money/data/models/get_favorites/get_user_favorites_response_body.dart';
import '../../../modules/send_money/data/models/save_transaction/save_transaction_request_body.dart';
import '../../../modules/send_money/data/models/save_transaction/save_transaction_response_body.dart';
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

  @POST(ApiRoutes.accountCreateAccount)
  Future<CreateAccountResponseBody> createAccount(
    @Body() CreateAccountRequestBody body,
  );

  @GET(ApiRoutes.accountGetRequiredFiles)
  Future<GetRequiredFilesResponseBody> getRequiredFiles({
    @Query('AccountTypeId') required int accountTypeId,
    @Query('Page') int page = 1,
    @Query('Size') int size = 20,
  });

  @GET(ApiRoutes.accountGetPendingRewardUsers)
  Future<GetPendingRewardUsersResponseBody> getPendingRewardUsers({
    @Query('page') int page = 1,
    @Query('size') int size = 20,
  });

  @GET(ApiRoutes.accountGetCountries)
  Future<GetAllCountriesResponseBody> getCountries({
    @Query('IsActive') bool isActive = true,
  });

  @GET(ApiRoutes.accountGetCurrencies)
  Future<GetCurrenciesResponseBody> getCurrencies();

  @POST(ApiRoutes.accountCreateWallet)
  Future<CreateWalletResponseBody> createWallet(
    @Body() CreateWalletRequestBody body,
  );

  @POST(ApiRoutes.accountCreateWalletPin)
  Future<CreateWalletPinResponseBody> createWalletPin(
    @Body() CreateWalletPinRequestBody body,
  );

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

  @POST(ApiRoutes.transactionCreateTransactionDraft)
  Future<CreateTransactionDraftResponseBody> createTransactionDraft(
    @Body() CreateTransactionDraftRequestBody body,
  );

  @POST(ApiRoutes.transactionCheckWalletPin)
  Future<CheckWalletPinRsponseBody> checkWalletPin(
    @Body() CheckWalletPinRequestBody body,
  );

  @POST(ApiRoutes.transactionSaveTransaction)
  Future<SaveTransactionResponseBody> saveTransaction(
    @Body() SaveTransactionRequestBody body,
  );

  @GET(ApiRoutes.transactionGetTransactions)
  Future<GetTransactionResponseBody> getTransactions({
    @Query('MinAmount') double? minAmount,
    @Query('MaxAmount') double? maxAmount,
    @Query('TransactionTypeId') int? transactionTypeId,
    @Query('FromDate') String? fromDate,
    @Query('ToDate') String? toDate,
    @Query('searchQuery') String? searchQuery,
    @Query('accountId') String? accountId,
    @Query('currencyId') int? currencyId,
    @Query('Page') int? page,
    @Query('Size') int? size,
  });

  @GET(ApiRoutes.transactionGetPendingTransactions)
  Future<GetTransactionResponseBody> getPendingTransactions({
    @Query('Page') int page = 1,
    @Query('Size') int size = 20,
  });

  @GET(ApiRoutes.accountGetUserFavorites)
  Future<GetUserFavoritesResponseBody> getUserFavorites({
    @Query('page') required int page,
    @Query('size') required int size,
    @Query('search') required String shearch,
    @Query('isAddedByIPA') required bool isAddedByIPA,
  });
}
