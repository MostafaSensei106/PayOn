import 'package:dartz/dartz.dart';
import 'package:payon/core/error/failures.dart';
import 'package:payon/modules/login/domain/entities/user_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, UserEntity>> login(String email, String password);
}
