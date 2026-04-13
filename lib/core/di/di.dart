import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modules/login/data/repositories/base_login_repository.dart';
import '../../modules/login/data/repositories/login_repository.dart';
import '../../modules/login/logic/cubit/login_cubit.dart';
import '../localization/data/base_localization_repository.dart';
import '../localization/data/localization_repository.dart';
import '../localization/logic/cubit/localization_cubit.dart';
import '../networking/api_service/api_service.dart';
import '../networking/dio_factory.dart';
import '../services/biometrics/base_biometrics_service.dart';
import '../services/biometrics/fingerprint_service.dart';
import '../services/l10n/l10n_service.dart';
import '../services/local_storage/base_secure_storage_service.dart';
import '../services/share/base_share_service.dart';
import '../services/share/share_plus_service.dart';
import '../services/shared_prefs/base_prefs_storage_service.dart';
import '../services/shared_prefs/flutter_secure_storage_service.dart';
import '../services/shared_prefs/shared_prefs_service.dart';
import '../services/theme/theme_service.dart';
import '../services/toast/base_toast_service.dart';
import '../services/toast/toastification_service.dart';
import '../services/url_launcher/base_url_launcher_services.dart';
import '../services/url_launcher/url_launcher_service.dart';
import '../theme/data/base_theme_repository.dart';
import '../theme/data/theme_repository.dart';
import '../theme/logic/cubit/theme_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  /// Localizations
  /// use with getIt<L10nService>().get(context).key;
  getIt.registerLazySingleton<L10nService>(() => L10nService());

  /// Theme
  getIt.registerLazySingleton<ThemeService>(() => ThemeService());

  /// Shared Preferences
  /// use with getIt<BasePrefsStorageService>().getUserToken();
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<BasePrefsStorageService>(
    () => SharedPrefsService(sharedPreferences),
  );

  /// Flutter Secure Storage
  /// use with getIt<BaseSecureStorageService>().getUserToken();
  const storage = FlutterSecureStorage();
  getIt.registerLazySingleton<BaseSecureStorageService>(
    () => FlutterSecureStorageService(storage),
  );

  /// Dio and API Service
  /// use with getIt<APIService>();
  final dio = await DioFactory.getDio();
  getIt.registerLazySingleton<APIService>(() => APIService(dio));

  /// Login
  getIt.registerLazySingleton<BaseLoginRepository>(
    () => LoginRepository(getIt<APIService>()),
  );
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt(), getIt(), getIt()),
  );

  /// Url Launcher
  /// use with getIt<BaseUrlLauncherServices>().launchWebsite('https://google.com');
  getIt.registerLazySingleton<BaseUrlLauncherServices>(
    () => UrlLauncherService(),
  );

  /// Share Plus
  /// use with getIt<BaseShareService>().shareUrl(url: 'https://google.com');
  getIt.registerLazySingleton<BaseShareService>(() => SharePlusService());

  /// Toastification
  /// use with getIt<BaseToastService>().showSuccess(context, 'Success');
  getIt.registerLazySingleton<BaseToastService>(() => ToastificationService());

  /// Fingerprint Biometrics
  ///
  getIt.registerLazySingleton<BaseBiometricsService>(
    () => FingerprintService(),
  );

  /// Theme
  getIt.registerLazySingleton<BaseThemeRepository>(
    () => ThemeRepository(getIt<BasePrefsStorageService>()),
  );

  getIt.registerLazySingleton<ThemeCubit>(
    () => ThemeCubit(getIt<BaseThemeRepository>()),
  );

  /// Localization
  getIt.registerLazySingleton<BaseLocalizationRepository>(
    () => LocalizationRepository(
      getIt<BasePrefsStorageService>(),
      getIt<L10nService>(),
    ),
  );

  /// Localization
  getIt.registerLazySingleton<LocalizationCubit>(
    () => LocalizationCubit(getIt<BaseLocalizationRepository>()),
  );
}
