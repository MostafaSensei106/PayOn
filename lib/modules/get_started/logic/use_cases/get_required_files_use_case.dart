import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/required_files/required_files_mapper.dart';
import '../../data/repositories/register/base_register_repository.dart';
import '../entities/register_entities.dart';

@injectable
class GetRequiredFilesUseCase
    implements BaseUseCase<List<RequiredFileEntity>, NoParams> {
  GetRequiredFilesUseCase(this._repository);

  final BaseRegisterRepository _repository;

  @override
  Future<ApiResult<List<RequiredFileEntity>>> call(NoParams params) async {
    final result = await _repository.getRequiredFiles();
    return result.fold(
      onSuccess: (response) => ApiResult.success(
        data: response.data.map((e) => e.toEntity()).toList(),
      ),
      onFailure: (error) => ApiResult.failure(error: error),
    );
  }
}
