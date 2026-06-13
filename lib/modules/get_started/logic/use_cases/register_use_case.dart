import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/register/register_mapper.dart';
import '../../data/models/register/register_request_body.dart';
import '../../data/repositories/register/base_register_repository.dart';
import '../entities/register_entities.dart';

@injectable
class RegisterUseCase
    implements BaseUseCase<RegisterEntity, RegisterRequestBody> {
  RegisterUseCase(this._repository);

  final BaseRegisterRepository _repository;

  @override
  Future<ApiResult<RegisterEntity>> call(RegisterRequestBody params) async {
    final result = await _repository.register(params);
    return result.when(
      success: (response) => ApiResult.success(data: response.toEntity()),
      failure: (error) => ApiResult.failure(error: error),
    );
  }
}
