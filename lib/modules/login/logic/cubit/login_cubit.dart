import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_response.dart';
import '../../data/repositories/base_login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState<LoginResponse>> {
  LoginCubit(this._loginRepository)
    : super(const LoginState<LoginResponse>.initial());

  final BaseLoginRepository _loginRepository;

  Future<void> emitLoginStates(LoginRequestBody body) async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(body);
    response.when(
      success: (r) => emit(LoginState.success(data: r)),
      failure: (err) => emit(
        LoginState.failure(error: err.failure.message ?? 'Unknown Error'),
      ),
    );
  }
}
