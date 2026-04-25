import 'base_biometrics_service.dart';

final class FaceIdService implements BaseBiometricsService {
  @override
  Future<bool> authenticate({required String message}) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  Future<bool> isBiometricsAvailable() {
    // TODO: implement isBiometricsAvailable
    throw UnimplementedError();
  }
}
