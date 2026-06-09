import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repositories/login_repository.dart';
import '../entities/login_entity.dart';
import '../entities/params/login_params.dart';

@injectable
final class LoginUsecase implements BaseUseCase<LoginEntity, LoginParams> {
  LoginUsecase({required this._repo});

  final LoginRepository _repo;

  @override
  Future<Result<LoginEntity, Failures>> call(LoginParams params) =>
      _repo.login(params);
}
