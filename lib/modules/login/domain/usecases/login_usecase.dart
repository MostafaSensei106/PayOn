import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/login_repository.dart';

class LoginUseCase extends UseCase<UserEntity, LoginParams> {
  LoginUseCase(this.repository);
  final LoginRepository repository;

  @override
  Future<Either<Failure, UserEntity>> call(final LoginParams params) async =>
      await repository.login(params.email, params.password);
}

class LoginParams {
  const LoginParams({required this.email, required this.password});
  final String email;
  final String password;
}
