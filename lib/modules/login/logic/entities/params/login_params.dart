// domain/use_cases/params/login_params.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';

@freezed
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String userName,
    required String password,
    @Default(false) bool isRememberMe,
  }) = _LoginParams;
}
