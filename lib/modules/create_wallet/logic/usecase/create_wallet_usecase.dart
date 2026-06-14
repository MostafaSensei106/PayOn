import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/create_wallet_request_body.dart';
import '../../data/repositories/create_wallet_repository.dart';

@injectable
class CreateWalletUseCase
    implements BaseUseCase<String, CreateWalletRequestBody> {
  CreateWalletUseCase(this._repository);

  final CreateWalletRepository _repository;

  @override
  Future<Result<String, Failures>> call(CreateWalletRequestBody params) async {
    final result = await _repository.createWallet(params);
    return result.when(
      success: (data) => Result.success(data: data.message),
      failure: (error) => Result.failure(error: ServerFailure(error.message)),
    );
  }
}
