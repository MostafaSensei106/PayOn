import 'base_biometrics_service.dart';

final class FaceIdService implements BaseBiometricsService {
  @override
  Future<bool> authenticate({required String message}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> isBiometricsAvailable() {
    throw UnimplementedError();
  }
}
