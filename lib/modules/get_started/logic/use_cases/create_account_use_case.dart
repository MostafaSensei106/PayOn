import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/register/create_account_request_body.dart';
import '../../data/models/register/register_mapper.dart';
import '../../data/repositories/register/base_register_repository.dart';
import '../entities/register_entities.dart';

@injectable
class CreateAccountUseCase
    implements BaseUseCase<CreateAccountEntity, CreateAccountRequestBody> {
  CreateAccountUseCase(this._repository);

  final BaseRegisterRepository _repository;

  @override
  Future<ApiResult<CreateAccountEntity>> call(
    CreateAccountRequestBody params,
  ) async {
    final result = await _repository.createAccount(params);
    return result.fold(
      onSuccess: (response) => ApiResult.success(data: response.toEntity()),
      onFailure: (error) => ApiResult.failure(error: error),
    );
  }
}
