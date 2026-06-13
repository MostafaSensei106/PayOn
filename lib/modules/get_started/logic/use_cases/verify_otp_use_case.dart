import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/verify_otp/verify_otp_mapper.dart';
import '../../data/models/verify_otp/verify_otp_request_body.dart';
import '../../data/repositories/otp/base_otp_repository.dart';
import '../entities/otp_entity.dart';

@injectable
class VerifyOtpUseCase
    implements BaseUseCase<VerifyOtpEntity, VerifyOtpRequestBody> {
  VerifyOtpUseCase(this._repository);

  final BaseOtpRepository _repository;

  @override
  Future<ApiResult<VerifyOtpEntity>> call(VerifyOtpRequestBody params) async {
    final result = await _repository.verifyOTP(params);
    return result.when(
      success: (response) => ApiResult.success(data: response.toEntity()),
      failure: (error) => ApiResult.failure(error: error),
    );
  }
}
