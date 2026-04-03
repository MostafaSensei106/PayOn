import 'package:equatable/equatable.dart';
import '../../domain/entities/user_entity.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {

  const LoginSuccess(this.user);
  final UserEntity user;

  @override
  List<Object?> get props => [user];
}

class LoginFailure extends LoginState {

  const LoginFailure(this.error);
  final String error;

  @override
  List<Object?> get props => [error];
}
