// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
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
import 'package:payon/core/services/app_info/app_info_service.dart' as _i977;
import 'package:payon/core/services/app_info/interface/base_app_info_service.dart'
    as _i361;
import 'package:payon/core/services/app_info/interface/base_package_info_adapter.dart'
    as _i153;
import 'package:payon/core/services/app_info/package_info_plus_adapter.dart'
    as _i594;
import 'package:payon/core/services/biometrics/base_biometrics_service.dart'
    as _i553;
import 'package:payon/core/services/biometrics/fingerprint_service.dart'
    as _i242;
import 'package:payon/core/services/l10n/l10n_service.dart' as _i151;
import 'package:payon/core/services/shared_prefs/base_pref_storage_service.dart'
    as _i333;
import 'package:payon/core/services/shared_prefs/secure_storage_service.dart'
    as _i884;
import 'package:payon/core/services/shared_prefs/shared_prefs_service.dart'
    as _i143;
import 'package:payon/core/services/shared_prefs/storage_facade.dart' as _i953;
import 'package:payon/core/services/theme/theme_service.dart' as _i480;
import 'package:payon/core/services/toast/base_toast_service.dart' as _i247;
import 'package:payon/core/services/toast/toastification_service.dart' as _i251;
import 'package:payon/core/utils/localization/data/base_localization_repository.dart'
    as _i787;
import 'package:payon/core/utils/localization/data/localization_repository.dart'
    as _i538;
import 'package:payon/core/utils/localization/logic/cubit/localization_cubit.dart'
    as _i492;
import 'package:payon/core/utils/network/logic/cubit/network_cubit.dart'
    as _i838;
import 'package:payon/core/utils/theme/data/base_theme_repository.dart'
    as _i218;
import 'package:payon/core/utils/theme/data/theme_repository.dart' as _i941;
import 'package:payon/core/utils/theme/logic/cubit/theme_cubit.dart' as _i889;
import 'package:payon/modules/about_app/data/about_app_repsitory.dart' as _i148;
import 'package:payon/modules/about_app/data/base_about_app_repository.dart'
    as _i725;
import 'package:payon/modules/about_app/logic/cubit/about_app_cubit.dart'
    as _i258;
import 'package:payon/modules/fingerprint_auth/data/repository/base_security_repository.dart'
    as _i750;
import 'package:payon/modules/fingerprint_auth/data/repository/security_ropository.dart'
    as _i294;
import 'package:payon/modules/fingerprint_auth/logic/cubit/security_cubit.dart'
    as _i665;
import 'package:payon/modules/get_started/data/repositories/account_type/account_type_repository.dart'
    as _i941;
import 'package:payon/modules/get_started/data/repositories/account_type/base_account_type_repository.dart'
    as _i276;
import 'package:payon/modules/get_started/data/repositories/otp/base_otp_repository.dart'
    as _i78;
import 'package:payon/modules/get_started/data/repositories/otp/otp_repository.dart'
    as _i956;
import 'package:payon/modules/get_started/data/repositories/register/base_register_repository.dart'
    as _i1033;
import 'package:payon/modules/get_started/data/repositories/register/register_repository.dart'
    as _i937;
import 'package:payon/modules/get_started/logic/cubit/account_type/account_type_cubit.dart'
    as _i843;
import 'package:payon/modules/get_started/logic/cubit/otp/otp_cubit.dart'
    as _i355;
import 'package:payon/modules/get_started/logic/cubit/register/register_cubit.dart'
    as _i225;
import 'package:payon/modules/login/data/repositories/base_login_repository.dart'
    as _i845;
import 'package:payon/modules/login/data/repositories/login_repository.dart'
    as _i719;
import 'package:payon/modules/login/logic/cubit/login_cubit.dart' as _i495;
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
    gh.lazySingleton<_i895.Connectivity>(() => injectionModule.connectivity);
    gh.lazySingleton<_i151.L10nService>(() => _i151.L10nService());
    gh.lazySingleton<_i480.ThemeService>(() => _i480.ThemeService());
    gh.lazySingleton<_i889.ThemeCubit>(() => _i889.ThemeCubit());
    gh.lazySingleton<_i553.BaseBiometricsService>(
      () => _i242.FingerprintService(),
    );
    gh.lazySingleton<_i153.BasePackageInfoAdapter>(
      () => _i594.PackageInfoPlusAdapter(gh<_i655.PackageInfo>()),
    );
    gh.lazySingleton<_i255.BaseNetworkInfo>(
      () => _i577.NetworkInfo(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i884.SecureStorageService>(
      () => _i884.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i143.SharedPrefsService>(
      () => _i143.SharedPrefsService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i838.NetworkCubit>(
      () => _i838.NetworkCubit(gh<_i255.BaseNetworkInfo>()),
    );
    gh.lazySingleton<_i361.BaseAppInfoService>(
      () => _i977.AppInfoService(gh<_i153.BasePackageInfoAdapter>()),
    );
    gh.lazySingleton<_i247.BaseToastService>(
      () => _i251.ToastificationService(
        gh<_i151.L10nService>(),
        gh<_i480.ThemeService>(),
      ),
    );
    gh.lazySingleton<_i492.LocalizationCubit>(
      () => _i492.LocalizationCubit(l10nService: gh<_i151.L10nService>()),
    );
    gh.lazySingleton<_i333.BasePrefStorageService>(
      () => _i953.StorageFacade(
        sharedPrefsService: gh<_i143.SharedPrefsService>(),
        secureStorageService: gh<_i884.SecureStorageService>(),
      ),
    );
    await gh.factoryAsync<_i361.Dio>(
      () => injectionModule.dio(
        gh<_i492.LocalizationCubit>(),
        gh<_i333.BasePrefStorageService>(),
        gh<_i255.BaseNetworkInfo>(),
        gh<_i838.NetworkCubit>(),
      ),
      preResolve: true,
    );
    gh.lazySingleton<_i550.ApiService>(
      () => injectionModule.apiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i787.BaseLocalizationRepository>(
      () => _i538.LocalizationRepository(
        storage: gh<_i333.BasePrefStorageService>(),
        l10nService: gh<_i151.L10nService>(),
      ),
    );
    gh.lazySingleton<_i218.BaseThemeRepository>(
      () => _i941.ThemeRepository(gh<_i333.BasePrefStorageService>()),
    );
    gh.lazySingleton<_i725.BaseAboutAppRepository>(
      () => _i148.AboutAppRepsitory(gh<_i361.BaseAppInfoService>()),
    );
    gh.lazySingleton<_i1033.BaseRegisterRepository>(
      () => _i937.RegisterRepository(gh<_i550.ApiService>()),
    );
    gh.lazySingleton<_i276.BaseAccountTypeRepository>(
      () => _i941.AccountTypeRepository(gh<_i550.ApiService>()),
    );
    gh.lazySingleton<_i78.BaseOtpRepository>(
      () => _i956.OtpRepository(gh<_i550.ApiService>()),
    );
    gh.lazySingleton<_i750.BaseSecurityRepository>(
      () => _i294.SecurityRopository(gh<_i333.BasePrefStorageService>()),
    );
    gh.factory<_i843.AccountTypeCubit>(
      () => _i843.AccountTypeCubit(gh<_i276.BaseAccountTypeRepository>()),
    );
    gh.factory<_i258.AboutAppCubit>(
      () => _i258.AboutAppCubit(gh<_i725.BaseAboutAppRepository>()),
    );
    gh.lazySingleton<_i845.BaseLoginRepository>(
      () => _i719.LoginRepository(gh<_i550.ApiService>()),
    );
    gh.factory<_i225.RegisterCubit>(
      () => _i225.RegisterCubit(gh<_i1033.BaseRegisterRepository>()),
    );
    gh.factory<_i355.OtpCubit>(
      () => _i355.OtpCubit(gh<_i78.BaseOtpRepository>()),
    );
    gh.factory<_i665.SecurityCubit>(
      () => _i665.SecurityCubit(
        repo: gh<_i750.BaseSecurityRepository>(),
        biometricsService: gh<_i553.BaseBiometricsService>(),
      ),
    );
    gh.factory<_i495.LoginCubit>(
      () => _i495.LoginCubit(
        gh<_i845.BaseLoginRepository>(),
        gh<_i553.BaseBiometricsService>(),
        gh<_i333.BasePrefStorageService>(),
      ),
    );
    return this;
  }

  _i151.L10nService get l10nService => get<_i151.L10nService>();

  _i480.ThemeService get themeService => get<_i480.ThemeService>();

  _i889.ThemeCubit get themeCubit => get<_i889.ThemeCubit>();

  _i242.FingerprintService get fingerprintService =>
      get<_i242.FingerprintService>();

  _i594.PackageInfoPlusAdapter get packageInfoPlusAdapter =>
      get<_i594.PackageInfoPlusAdapter>();

  _i577.NetworkInfo get networkInfo => get<_i577.NetworkInfo>();

  _i884.SecureStorageService get secureStorageService =>
      get<_i884.SecureStorageService>();

  _i143.SharedPrefsService get sharedPrefsService =>
      get<_i143.SharedPrefsService>();

  _i838.NetworkCubit get networkCubit => get<_i838.NetworkCubit>();

  _i977.AppInfoService get appInfoService => get<_i977.AppInfoService>();

  _i251.ToastificationService get toastificationService =>
      get<_i251.ToastificationService>();

  _i492.LocalizationCubit get localizationCubit =>
      get<_i492.LocalizationCubit>();

  _i953.StorageFacade get storageFacade => get<_i953.StorageFacade>();

  _i538.LocalizationRepository get localizationRepository =>
      get<_i538.LocalizationRepository>();

  _i941.ThemeRepository get themeRepository => get<_i941.ThemeRepository>();

  _i148.AboutAppRepsitory get aboutAppRepsitory =>
      get<_i148.AboutAppRepsitory>();

  _i937.RegisterRepository get registerRepository =>
      get<_i937.RegisterRepository>();

  _i941.AccountTypeRepository get accountTypeRepository =>
      get<_i941.AccountTypeRepository>();

  _i956.OtpRepository get otpRepository => get<_i956.OtpRepository>();

  _i294.SecurityRopository get securityRopository =>
      get<_i294.SecurityRopository>();

  _i843.AccountTypeCubit get accountTypeCubit => get<_i843.AccountTypeCubit>();

  _i258.AboutAppCubit get aboutAppCubit => get<_i258.AboutAppCubit>();

  _i719.LoginRepository get loginRepository => get<_i719.LoginRepository>();

  _i225.RegisterCubit get registerCubit => get<_i225.RegisterCubit>();

  _i355.OtpCubit get otpCubit => get<_i355.OtpCubit>();

  _i665.SecurityCubit get securityCubit => get<_i665.SecurityCubit>();

  _i495.LoginCubit get loginCubit => get<_i495.LoginCubit>();
}

class _$InjectionModule extends _i570.InjectionModule {}
