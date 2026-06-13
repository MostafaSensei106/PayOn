import 'dart:io';
import 'package:injectable/injectable.dart';
import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repositories/register/base_register_repository.dart';

@injectable
class UploadKycFilesUseCase implements BaseUseCase<void, UploadKycFilesParams> {
  UploadKycFilesUseCase(this._repository);

  final BaseRegisterRepository _repository;

  @override
  Future<ApiResult<void>> call(UploadKycFilesParams params) async {
    for (final entry in params.files.entries) {
      final result = await _repository.uploadFiles(
        file: entry.value,
        accId: params.accId,
        requiredDocId: entry.key,
      );
      if (result.isFailure) {
        return ApiResult.failure(error: result.errorOrNull!);
      }
    }
    return const ApiResult.success(data: null);
  }

}

class UploadKycFilesParams {
  const UploadKycFilesParams({required this.accId, required this.files});

  final String accId;
  final Map<int, File> files;
}
