import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_entities.freezed.dart';

@freezed
abstract class RegisterEntity with _$RegisterEntity {
  const factory RegisterEntity({
    required String token,
    required String message,
    String? accountId,
  }) = _RegisterEntity;
}

@freezed
abstract class CreateAccountEntity with _$CreateAccountEntity {
  const factory CreateAccountEntity({
    required String message,
    required String accountId,
    dynamic data,
  }) = _CreateAccountEntity;
}

@freezed
abstract class RequiredFileEntity with _$RequiredFileEntity {
  const factory RequiredFileEntity({
    required int id,
    required String name,
    required bool isRequired,
    String? description,
  }) = _RequiredFileEntity;
}
