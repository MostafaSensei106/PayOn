import 'dart:io';

import '../../../../../core/constants/types/type_def.dart';
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
  Future<ApiResult<GetRequiredFilesResponseBody>> getRequiredFiles();
  Future<ApiResult<void>> uploadFiles({
    required File file,
    required String accId,
    required int requiredDocId,
  });
}
