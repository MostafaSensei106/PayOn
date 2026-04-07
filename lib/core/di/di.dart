import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modules/login/data/repositories/base_login_repository.dart';
import '../../modules/login/data/repositories/login_repository.dart';
import '../../modules/login/logic/cubit/login_cubit.dart';
import '../networking/api_service/api_service.dart';
import '../networking/dio_factory.dart';
import '../services/l10n/l10n_service.dart';
import '../services/share/base_share_service.dart';
import '../services/share/share_plus_service.dart';
import '../services/url_launcher/base_url_launcher_services.dart';
import '../services/url_launcher/url_launcher_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  /// Localizations
  getIt.registerLazySingleton<L10nService>(() => L10nService());

  /// Shared Preferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  /// Dio and API Service
  final dio = await DioFactory.getDio();
  getIt.registerLazySingleton<APIService>(() => APIService(dio));

  /// Login
  getIt.registerLazySingleton<BaseLoginRepository>(
    () => LoginRepository(getIt<APIService>()),
  );
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  /// Url Launcher
  /// use with getIt<BaseUrlLauncherServices>().launchWebsite('https://google.com');
  getIt.registerLazySingleton<BaseUrlLauncherServices>(
    () => UrlLauncherService(),
  );

  /// Share Plus
  /// use with getIt<BaseShareService>().shareUrl(url: 'https://google.com');
  getIt.registerLazySingleton<BaseShareService>(() => SharePlusService());
}
