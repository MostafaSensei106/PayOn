import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../../home/data/models/get_transaction_response_body.dart';
import '../../../home/logic/entity/transaction_entity.dart';
import '../../data/repositories/request_money_repository.dart';

@injectable
class GetPendingTransactionsUseCase
    implements BaseUseCase<List<TransactionItemEntity>, NoParams> {
  GetPendingTransactionsUseCase({required this._repo});

  final RequestMoneyRepository _repo;

  @override
  Future<Result<List<TransactionItemEntity>, Failures>> call(
    NoParams params,
  ) async {
    final response = await _repo.getPendingTransactions();
    return response.fold(
      onSuccess: (data) => Result.success(data: data.toEntity().data.items),
      onFailure: (error) => Result.failure(error: ServerFailure(error.message)),
    );
  }
}
