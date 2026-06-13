import 'dart:io';

import '../../../../../core/constants/types/type_def.dart';
import '../../models/get_all_countries/get_all_countries_response_body.dart';
import '../../models/register/create_account_request_body.dart';
import '../../models/register/create_account_response_body.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';
import '../../models/required_files/get_required_files_response_body.dart';

abstract class BaseRegisterRepository {
  Future<ApiResult<RegisterResponseBody>> register(RegisterRequestBody body);
  Future<ApiResult<CreateAccountResponseBody>> createAccount(
    CreateAccountRequestBody body,
  );
  Future<ApiResult<GetRequiredFilesResponseBody>> getRequiredFiles({
    required int accountTypeId,
    int page = 1,
    int size = 20,
  });
  Future<ApiResult<GetAllCountriesResponseBody>> getCountries();
  Future<ApiResult<void>> uploadFiles({
    required File file,
    required String accId,
    required int requiredDocId,
  });
}
