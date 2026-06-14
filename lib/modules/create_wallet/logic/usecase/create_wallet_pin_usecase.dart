import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/create_wallet_pin_request_body.dart';
import '../../data/repositories/create_wallet_repository.dart';

@injectable
class CreateWalletPinUseCase
    implements BaseUseCase<String, CreateWalletPinRequestBody> {
  CreateWalletPinUseCase(this._repository);

  final CreateWalletRepository _repository;

  @override
  Future<Result<String, Failures>> call(
    CreateWalletPinRequestBody params,
  ) async {
    final result = await _repository.createWalletPin(params);
    return result.when(
      success: (data) => Result.success(data: data.message),
      failure: (error) => Result.failure(error: ServerFailure(error.message)),
    );
  }
}
