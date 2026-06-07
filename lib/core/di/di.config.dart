// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:payon/core/di/injection_module.dart' as _i570;
import 'package:payon/core/networking/api_service/api_service.dart' as _i550;
import 'package:payon/core/networking/network_info/interface/base_network_info.dart'
    as _i255;
import 'package:payon/core/networking/network_info/network_info.dart' as _i577;
import 'package:payon/core/utils/localization/logic/cubit/localization_cubit.dart'
    as _i492;
import 'package:share_plus/share_plus.dart' as _i998;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    await gh.factoryAsync<_i655.PackageInfo>(
      () => injectionModule.packageInfo,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectionModule.secureStorage,
    );
    gh.lazySingleton<_i998.SharePlus>(() => injectionModule.sharePlus);
    await gh.factoryAsync<_i361.Dio>(
      () => injectionModule.dio(
        gh<_i492.LocalizationCubit>(),
        gh<InvalidType>(),
        gh<InvalidType>(),
        gh<InvalidType>(),
      ),
      preResolve: true,
    );
    gh.lazySingleton<_i550.ApiService>(
      () => injectionModule.apiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i255.BaseNetworkInfo>(
      () => _i577.NetworkInfo(gh<InvalidType>()),
    );
    return this;
  }

  _i577.NetworkInfo get networkInfo => get<_i577.NetworkInfo>();
}

class _$InjectionModule extends _i570.InjectionModule {}
