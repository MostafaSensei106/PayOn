import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/get_providers_response_body.dart';
import '../repositories/add_money_repository.dart';

@injectable
class GetProvidersUsecase implements BaseUseCase<GetProvidersResponseBody, NoParams> {
  GetProvidersUsecase(this._repository);

  final AddMoneyRepository _repository;

  @override
  Future<ApiResult<GetProvidersResponseBody>> call(NoParams params) {
    return _repository.getProviders();
  }
}
