import 'dart:io';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';

import 'base_register_repository.dart';

final class RegisterRepository implements BaseRegisterRepository {
  RegisterRepository(this._apiService);

  final ApiService _apiService;

  @override
  Future<ApiResult<RegisterResponseBody>> register(
    RegisterRequestBody body,
  ) async => ApiExecutor.execute<RegisterResponseBody>(
    action: () => _apiService.register(body),
  );

  @override
  Future<ApiResult<void>> uploadFiles({
    required File file,
    required String accId,
    required int requiredDocId,
  }) async => ApiExecutor.execute<void>(
    action: () => _apiService.uploadFiles(file, accId, requiredDocId),
  );
}
