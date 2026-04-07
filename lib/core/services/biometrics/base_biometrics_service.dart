abstract class BaseBiometricsService {
  Future<bool> isBiometricsAvailable();
  Future<bool> authenticate({required String message});
}
