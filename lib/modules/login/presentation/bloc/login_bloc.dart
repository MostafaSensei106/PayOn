import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/login_usecase.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<LoginSubmitted>((final event, final emit) async {
      emit(LoginLoading());
      final result = await loginUseCase(
        LoginParams(email: event.email, password: event.password),
      );
      result.fold(
        (final failure) => emit(LoginFailure(failure.message)),
        (final user) => emit(LoginSuccess(user)),
      );
    });
  }
  final LoginUseCase loginUseCase;
}
