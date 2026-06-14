import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/validator/amount_validator.dart';
import '../../../../core/utils/validator/user_info_validator.dart';
import '../entity/check_wallet_entity.dart';
import '../entity/create_tracnsaction_draft_entity.dart';
import '../entity/save_transaction_entity.dart';

part 'send_money_state.freezed.dart';

@freezed
sealed class SendMoneyState with _$SendMoneyState {
  const factory SendMoneyState.initial(SendMoneyFormState formState) = _Initial;
  const factory SendMoneyState.loading(SendMoneyFormState formState) = Loading;
  const factory SendMoneyState.success(
    SendMoneyFormState formState, {
    required CheckWalletEntity data,
  }) = Success;
  const factory SendMoneyState.transactionDraftSuccess(
    SendMoneyFormState formState, {
    required CreateTracnsactionDraftEntity draft,
  }) = TransactionDraftSuccess;
  const factory SendMoneyState.transactionSaved(
    SendMoneyFormState formState, {
    required SaveTransactionEntity data,
  }) = TransactionSaved;
  const factory SendMoneyState.failure(
    SendMoneyFormState formState, {
    required String message,
  }) = Failure;
}

@freezed
abstract class SendMoneyFormState with _$SendMoneyFormState {
  const factory SendMoneyFormState({
    @Default(UserInfo.pure()) UserInfo userInfo,
    @Default(Amount.pure()) Amount amount,
    @Default('') String description,
    @Default(false) bool isValid,
  }) = _SendMoneyFormState;
}
