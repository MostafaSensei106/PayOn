import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/check_wallet_request_body.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/check_wallet_entity.dart';

@injectable
class CheckWalletUsecase
    implements BaseUseCase<CheckWalletEntity, CheckWalletRequestBody> {
  CheckWalletUsecase({required this._repo});

  final SendMoneyRepository _repo;

  @override
  Future<Result<CheckWalletEntity, Failures>> call(
    CheckWalletRequestBody params,
  ) => _repo.checkWallet(params);
}
