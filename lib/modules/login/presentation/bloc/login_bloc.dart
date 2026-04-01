import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payon/modules/login/domain/usecases/login_usecase.dart';
import 'package:payon/modules/login/presentation/bloc/login_event.dart';
import 'package:payon/modules/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());
      final result = await loginUseCase(
        LoginParams(email: event.email, password: event.password),
      );
      result.fold(
        (failure) => emit(LoginFailure(failure.message)),
        (user) => emit(LoginSuccess(user)),
      );
    });
  }
}
