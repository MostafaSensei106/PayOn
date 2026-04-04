import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  /// Services

  /// Core

  /// Repositories

  /// UseCases

  /// Datasources

  /// Mappers

  /// Models

  /// Cubits
}
