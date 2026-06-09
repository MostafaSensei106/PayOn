import 'dart:io';

import '../../../../../core/constants/types/type_def.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';

abstract class BaseRegisterRepository {
  Future<ApiResult<RegisterResponseBody>> register(RegisterRequestBody body);
  Future<ApiResult<void>> uploadFiles({
    required File file,
    required String accId,
    required int requiredDocId,
  });
}
