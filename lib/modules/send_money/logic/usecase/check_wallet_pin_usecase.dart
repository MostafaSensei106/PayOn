import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/check_wallet_pin/check_wallet_pin_request_body.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/check_wallet_pin_entity.dart';

@injectable
class CheckWalletPinUsecase
    implements BaseUseCase<CheckWalletPinEntity, CheckWalletPinRequestBody> {
  CheckWalletPinUsecase({required this._repo});

  final SendMoneyRepository _repo;

  @override
  Future<Result<CheckWalletPinEntity, Failures>> call(
    CheckWalletPinRequestBody params,
  ) => _repo.checkWalletPin(params);
}
