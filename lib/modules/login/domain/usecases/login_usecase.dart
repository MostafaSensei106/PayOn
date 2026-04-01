import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:payon/core/error/failures.dart';
import 'package:payon/core/usecases/usecase.dart';
import 'package:payon/modules/login/domain/entities/user_entity.dart';
import 'package:payon/modules/login/domain/repositories/login_repository.dart';

class LoginUseCase extends UseCase<UserEntity, LoginParams> {
  final LoginRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) async {
    return await repository.login(params.email, params.password);
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
