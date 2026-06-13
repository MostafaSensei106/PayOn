import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/account_type/account_type_mapper.dart';
import '../../data/repositories/account_type/base_account_type_repository.dart';
import '../entities/account_type_entity.dart';

@injectable
class GetAccountTypesUseCase
    implements BaseUseCase<AccountTypeEntity, NoParams> {
  GetAccountTypesUseCase(this._repository);

  final BaseAccountTypeRepository _repository;

  @override
  Future<ApiResult<AccountTypeEntity>> call(NoParams params) async {
    final result = await _repository.getAccountTypes();
    return result.when(
      success: (response) => ApiResult.success(data: response.toEntity()),
      failure: (error) => ApiResult.failure(error: error),
    );
  }
}
