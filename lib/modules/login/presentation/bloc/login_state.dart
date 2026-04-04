import '../../domain/entities/user_entity.dart';

sealed class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  const LoginSuccess(this.user);
  final UserEntity user;
}

class LoginFailure extends LoginState {
  const LoginFailure(this.error);
  final String error;
}
