import 'package:dartz/dartz.dart';
import 'package:payon/core/error/failures.dart';
import 'package:payon/modules/login/data/datasources/login_remote_data_source.dart';
import 'package:payon/modules/login/domain/entities/user_entity.dart';
import 'package:payon/modules/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;

  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> login(
    String email,
    String password,
  ) async {
    try {
      final userModel = await remoteDataSource.login(email, password);
      return Right(userModel);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
