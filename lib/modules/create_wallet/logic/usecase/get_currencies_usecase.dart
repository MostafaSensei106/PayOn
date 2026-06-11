import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../../get_started/data/models/currencies/get_currencies_response_body.dart';
import '../../data/repositories/create_wallet_repository.dart';
import '../entity/currency_entity.dart';

@injectable
class GetCurrenciesUseCase
    implements BaseUseCase<List<CurrencyEntity>, NoParams> {
  GetCurrenciesUseCase(this._repository);

  final CreateWalletRepository _repository;

  @override
  Future<Result<List<CurrencyEntity>, Failures>> call(NoParams params) async {
    final result = await _repository.getCurrencies();
    return result.when(
      success: (data) =>
          Result.success(data: data.data.map((e) => e.toEntity()).toList()),
      failure: (error) => Result.failure(error: ServerFailure(error.message)),
    );
  }
}
