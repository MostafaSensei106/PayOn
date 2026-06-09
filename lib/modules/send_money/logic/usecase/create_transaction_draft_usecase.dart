import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/create_tracnsaction_draft_entity.dart';
import '../entity/params/create_transaction_params.dart';

@injectable
class CreateTransactionDraftUsecase
    implements
        BaseUseCase<CreateTracnsactionDraftEntity, CreateTransactionParams> {
  CreateTransactionDraftUsecase({required this._repo});

  final SendMoneyRepository _repo;

  @override
  Future<Result<CreateTracnsactionDraftEntity, Failures>> call(
    CreateTransactionParams params,
  ) => _repo.creatTransaction(params);
}
