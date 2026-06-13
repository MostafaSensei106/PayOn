import 'package:injectable/injectable.dart';
import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/send_otp/send_otp_request_body.dart';
import '../../data/repositories/otp/base_otp_repository.dart';
import '../../data/models/send_otp/send_otp_mapper.dart';
import '../entities/otp_entity.dart';

@injectable
class SendOtpUseCase implements BaseUseCase<SendOtpEntity, SendOtpRequestBody> {
  SendOtpUseCase(this._repository);

  final BaseOtpRepository _repository;

  @override
  Future<ApiResult<SendOtpEntity>> call(SendOtpRequestBody params) async {
    final result = await _repository.sendOTP(params);
    return result.when(
      success: (response) => ApiResult.success(data: response.toEntity()),
      failure: (error) => ApiResult.failure(error: error),
    );
  }
}
