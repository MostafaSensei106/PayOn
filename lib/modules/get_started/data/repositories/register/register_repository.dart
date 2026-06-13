import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../../core/networking/api_executor/api_executor.dart';
import '../../../../../core/networking/api_service/api_service.dart';
import '../../models/get_all_countries/get_all_countries_response_body.dart';
import '../../models/register/create_account_request_body.dart';
import '../../models/register/create_account_response_body.dart';
import '../../models/register/register_request_body.dart';
import '../../models/register/register_response_body.dart';
import '../../models/required_files/get_required_files_response_body.dart';

import 'base_register_repository.dart';

@LazySingleton(as: BaseRegisterRepository)
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
  Future<ApiResult<CreateAccountResponseBody>> createAccount(
    CreateAccountRequestBody body,
  ) async => ApiExecutor.execute<CreateAccountResponseBody>(
    action: () => _apiService.createAccount(body),
  );

  @override
  Future<ApiResult<GetRequiredFilesResponseBody>> getRequiredFiles({
    required int accountTypeId,
    int page = 1,
    int size = 20,
  }) async => ApiExecutor.execute<GetRequiredFilesResponseBody>(
    action:
        () => _apiService.getRequiredFiles(
          accountTypeId: accountTypeId,
          page: page,
          size: size,
        ),
  );

  @override
  Future<ApiResult<GetAllCountriesResponseBody>> getCountries() async =>
      ApiExecutor.execute<GetAllCountriesResponseBody>(
        action: () => _apiService.getCountries(),
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
