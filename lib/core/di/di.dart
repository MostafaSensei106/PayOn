import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modules/login/data/repositories/login_repository.dart';
import '../../modules/login/logic/cubit/login_cubit.dart';
import '../networking/api_service/api_service.dart';
import '../networking/dio_factory.dart';
import '../services/l10n/l10n_service.dart';

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
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
