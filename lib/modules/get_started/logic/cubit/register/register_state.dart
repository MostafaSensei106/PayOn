import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_enums.dart';
import '../../../../../core/utils/validator/email_validators.dart';
import '../../../../../core/utils/validator/full_name.dart';
import '../../../../../core/utils/validator/password.dart';
import '../../../../../core/utils/validator/phone_number.dart';
import '../../entities/account_type_entity.dart';
import '../../entities/country_entity.dart';
import '../../entities/register_entities.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState.initial(RegisterFormState form) = _Initial;
  const factory RegisterState.loading(RegisterFormState form) = Loading;
  const factory RegisterState.registerSuccess(
    RegisterFormState form, {
    required RegisterEntity data,
  }) = _RegisterSuccess;
  const factory RegisterState.createAccountSuccess(
    RegisterFormState form, {
    required CreateAccountEntity data,
  }) = _CreateAccountSuccess;
  const factory RegisterState.getRequiredFilesSuccess(
    RegisterFormState form, {
    required List<RequiredFileEntity> files,
  }) = _GetRequiredFilesSuccess;
  const factory RegisterState.getCountriesSuccess(
    RegisterFormState form, {
    required List<CountryItemEntity> countries,
  }) = _GetCountriesSuccess;
  const factory RegisterState.failure(
    RegisterFormState form, {
    required String error,
  }) = Failure;
}

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @Default(FullName.pure()) FullName name,
    @Default(Email.pure()) Email email,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password confirmPassword,
    @Default('') String birthDate,
    @Default(GenderType.none) GenderType gender,
    @Default(null) AccountTypeItemEntity? accountType,
    @Default({}) Map<int, File> files,

    @Default(false) bool isForgotPassword,
    @Default('en') String lang,
    @Default('') String code,

    @Default(true) bool isPhone,

    @Default('') String nationalityCode,
    @Default('') String country,
    @Default([]) List<CountryItemEntity> countries,
    @Default(2) int cityId,

    @Default(0) int currentStep,
    @Default(false) bool isValid,
  }) = _RegisterFormState;
}
