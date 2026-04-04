import 'package:dartz/dartz.dart';
import '../error/failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(final Params params);
}

class NoParams {}
