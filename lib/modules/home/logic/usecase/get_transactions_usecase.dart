import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repository/home_repostory.dart';
import '../entity/params/get_transactions_params.dart';
import '../entity/transaction_entity.dart';

@injectable
class GetTransactionsUsecase
    implements BaseUseCase<GetTransactionEntity, GetTransactionsParams> {
  GetTransactionsUsecase({required this._repo});

  final HomeRepostory _repo;

  @override
  Future<Result<GetTransactionEntity, Failures>> call(
    GetTransactionsParams params,
  ) => _repo.getTransactions(params);
}
