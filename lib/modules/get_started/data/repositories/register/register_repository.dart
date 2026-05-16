import 'dart:io';

import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_result/api_result.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';

import 'base_register_repository.dart';

final class RegisterRepository implements BaseRegisterRepository {
  RegisterRepository(this._apiService);

  final APIService _apiService;

  @override
  Future<APIResult<RegisterResponseBody>> register(
    RegisterRequestBody body,
  ) async => ApiExecutor.execute<RegisterResponseBody>(
    call: () => _apiService.register(body),
  );

  @override
  Future<APIResult<void>> uploadFiles({
    required File file,
    required String accId,
    required int requiredDocId,
  }) async => ApiExecutor.execute<void>(
    call: () => _apiService.uploadFiles(file, accId, requiredDocId),
  );
}
