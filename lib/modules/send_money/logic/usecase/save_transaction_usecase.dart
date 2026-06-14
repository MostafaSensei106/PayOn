import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/save_transaction/save_transaction_request_body.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/save_transaction_entity.dart';

@injectable
class SaveTransactionUsecase
    implements BaseUseCase<SaveTransactionEntity, SaveTransactionRequestBody> {
  SaveTransactionUsecase({required this._repo});

  final SendMoneyRepository _repo;

  @override
  Future<Result<SaveTransactionEntity, Failures>> call(
    SaveTransactionRequestBody params,
  ) => _repo.saveTransaction(params);
}
