import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/set_transaction_status_request_body.dart';
import '../../data/repositories/request_money_repository.dart';

@injectable
class SetTransactionStatusUseCase
    implements BaseUseCase<void, SetTransactionStatusRequestBody> {
  SetTransactionStatusUseCase({required this._repo});

  final RequestMoneyRepository _repo;

  @override
  Future<Result<void, Failures>> call(SetTransactionStatusRequestBody params) =>
      _repo.setTransactionStatus(params);
}
