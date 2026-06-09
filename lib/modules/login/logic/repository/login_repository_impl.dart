import 'package:injectable/injectable.dart';

import '../../../../core/constants/pref_keys.dart';
import '../../../../core/constants/types/type_def.dart';
import '../../../../core/networking/api_executor/api_executor.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_response_body.dart';
import '../../data/repositories/login_repository.dart';
import '../entities/login_entity.dart';
import '../entities/params/login_params.dart';

@LazySingleton(as: LoginRepository)
final class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._apiService, this._pref);
  final ApiService _apiService;
  final BasePrefStorageService _pref;

  @override
  Future<ApiResult<LoginEntity>> login(LoginParams params) async {
    final body = LoginRequestBody(
      userName: params.userName,
      password: params.password,
    );
    final response = await ApiExecutor.execute<LoginResponseBody>(
      action: () => _apiService.login(body),
    );

    return response.when(
      success: (t) async {
        await Future.wait([
          _pref.setData(key: PrefKeys.userToken, value: t.userData.token),
          _pref.setData(key: PrefKeys.isRememberMe, value: params.isRememberMe),
        ]);
        return ApiResult<LoginEntity>.success(data: t.toEntity());
      },
      failure: (e) => ApiResult<LoginEntity>.failure(error: e),
    );
  }
}
