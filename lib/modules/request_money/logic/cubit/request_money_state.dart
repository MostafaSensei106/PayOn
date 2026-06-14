import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/validator/amount_validator.dart';
import '../../../../core/utils/validator/user_info_validator.dart';
import '../../../home/logic/entity/transaction_entity.dart';
import '../../../send_money/logic/entity/check_wallet_entity.dart';
import '../../../send_money/logic/entity/create_tracnsaction_draft_entity.dart';

part 'request_money_state.freezed.dart';

@freezed
sealed class RequestMoneyState with _$RequestMoneyState {
  const factory RequestMoneyState.initial(RequestMoneyFormState formState) =
      _Initial;
  const factory RequestMoneyState.loading(RequestMoneyFormState formState) =
      Loading;
  const factory RequestMoneyState.pendingRequestsLoading(
      RequestMoneyFormState formState) = PendingRequestsLoading;
  const factory RequestMoneyState.pendingRequestsLoaded(
    RequestMoneyFormState formState, {
    required List<TransactionItemEntity> requests,
  }) = PendingRequestsLoaded;

  const factory RequestMoneyState.checkWalletSuccess(
    RequestMoneyFormState formState, {
    required CheckWalletEntity data,
  }) = CheckWalletSuccess;

  const factory RequestMoneyState.transactionDraftSuccess(
    RequestMoneyFormState formState, {
    required CreateTracnsactionDraftEntity draft,
  }) = TransactionDraftSuccess;

  const factory RequestMoneyState.requestSentSuccess(
    RequestMoneyFormState formState,
  ) = RequestSentSuccess;

  const factory RequestMoneyState.requestApprovedSuccess(
    RequestMoneyFormState formState,
  ) = RequestApprovedSuccess;

  const factory RequestMoneyState.failure(
    RequestMoneyFormState formState, {
    required String message,
  }) = Failure;
}

@freezed
abstract class RequestMoneyFormState with _$RequestMoneyFormState {
  const factory RequestMoneyFormState({
    @Default(UserInfo.pure()) UserInfo userInfo,
    @Default(Amount.pure()) Amount amount,
    @Default('') String description,
    @Default(false) bool isValid,
  }) = _RequestMoneyFormState;
}
