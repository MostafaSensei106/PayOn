import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/biometrics/base_biometrics_service.dart';
import '../../data/models/login_response_body.dart';
import '../usecase/login_usecase.dart';
import 'login_state.dart';

@injectable
final class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUsecase, this._biometricsService)
    : super(const LoginState<LoginResponseBody>.initial(LoginFormState()));

  final LoginUsecase _loginUsecase;
  final BaseBiometricsService _biometricsService;
}
