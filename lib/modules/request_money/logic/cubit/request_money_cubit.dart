import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/hash_service/base_hash_service.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../../../core/utils/validator/amount_validator.dart';
import '../../../../core/utils/validator/user_info_validator.dart';
import '../../../home/logic/entity/transaction_entity.dart';
import '../../../send_money/data/models/check_wallet/check_wallet_request_body.dart';
import '../../../send_money/data/models/check_wallet_pin/check_wallet_pin_request_body.dart';
import '../../../send_money/data/models/save_transaction/save_transaction_request_body.dart';
import '../../../send_money/logic/entity/params/create_transaction_params.dart';
import '../../../send_money/logic/usecase/check_wallet_pin_usecase.dart';
import '../../../send_money/logic/usecase/check_wallet_usecase.dart';
import '../../../send_money/logic/usecase/create_transaction_draft_usecase.dart';
import '../../../send_money/logic/usecase/save_transaction_usecase.dart';
import '../../data/models/set_transaction_status_request_body.dart';
import '../usecase/get_pending_transactions_usecase.dart';
import '../usecase/set_transaction_status_usecase.dart';
import 'request_money_state.dart';

@injectable
class RequestMoneyCubit extends Cubit<RequestMoneyState> {
  RequestMoneyCubit(
    this._getPendingTransactionsU,
    this._checkWalletU,
    this._createDraftU,
    this._checkPinU,
    this._saveTransactionU,

    this._setTransactionStatusU,
    this._hashService,
  ) : super(const RequestMoneyState.initial(RequestMoneyFormState()));

  final GetPendingTransactionsUseCase _getPendingTransactionsU;
  final CheckWalletUsecase _checkWalletU;
  final CreateTransactionDraftUsecase _createDraftU;
  final CheckWalletPinUsecase _checkPinU;
  final SaveTransactionUsecase _saveTransactionU;

  final SetTransactionStatusUseCase _setTransactionStatusU;
  final BaseHashService _hashService;

  Future<void> getPendingRequests() async {
    final form = state.formState;
    emit(RequestMoneyState.pendingRequestsLoading(form));

    final result = await _getPendingTransactionsU.call(const NoParams());

    if (result.isSuccess) {
      emit(
        RequestMoneyState.pendingRequestsLoaded(
          form,
          requests: result.dataOrNull!,
        ),
      );
    } else {
      emit(
        RequestMoneyState.pendingRequestsError(
          form,
          message: result.errorOrNull!.message,
        ),
      );
    }
  }

  Future<void> checkWallet() async {
    if (state.formState.isValid == false) return;

    final form = state.formState;
    emit(RequestMoneyState.loading(form));

    final body = CheckWalletRequestBody(userInfo: form.userInfo.value);
    final response = await _checkWalletU.call(body);

    response.when(
      success: (data) =>
          emit(RequestMoneyState.checkWalletSuccess(form, data: data)),
      failure: (e) => emit(RequestMoneyState.failure(form, message: e.message)),
    );
  }

  Future<void> createTransactionDraft({
    required String senderId,
    required String receiverId,
  }) async {
    final form = state.formState;
    emit(RequestMoneyState.loading(form));

    final params = CreateTransactionParams(
      senderId: senderId,
      receiverId: receiverId,
      amount: double.parse(form.amount.value),
      description: form.description,
      transactionTypeId: 17, // Request Money
    );

    final response = await _createDraftU.call(params);

    response.when(
      success: (draft) =>
          emit(RequestMoneyState.transactionDraftSuccess(form, draft: draft)),
      failure: (e) => emit(RequestMoneyState.failure(form, message: e.message)),
    );
  }

  Future<void> confirmRequestMoney({
    required String pin,
    required String walletId,
    required List<int> draftIds,
    required String senderId,
  }) async {
    final form = state.formState;
    emit(RequestMoneyState.loading(form));

    final pinHash = await _hashService.hash(pin);

    final checkPinBody = CheckWalletPinRequestBody(
      walletId: walletId,
      pinHash: pinHash,
      draftIds: draftIds,
      senderId: senderId,
      transactionTypeId: 17,
    );

    final checkPinResponse = await _checkPinU.call(checkPinBody);

    checkPinResponse.when(
      success: (_) => emit(RequestMoneyState.requestSentSuccess(form)),
      failure: (e) => emit(RequestMoneyState.failure(form, message: e.message)),
    );
  }

  Future<void> approvePendingRequest({
    required String pin,
    required String walletId,
    required int draftId,
  }) async {
    final form = state.formState;
    emit(RequestMoneyState.loading(form));

    final pinHash = await _hashService.hash(pin);

    // 1. Check Wallet Pin
    final checkPinBody = CheckWalletPinRequestBody(
      walletId: walletId,
      pinHash: pinHash,
    );

    final checkPinResponse = await _checkPinU.call(checkPinBody);

    if (checkPinResponse.isSuccess) {
      final pinData = checkPinResponse.dataOrNull!;
      // 2. Save Transaction
      final saveTransactionBody = SaveTransactionRequestBody(
        draftids: [draftId, draftId + 1],
        walletId: walletId,
        otp: pinData.otp,
        isAcceptRequest: true,
      );

      final saveResponse = await _saveTransactionU.call(saveTransactionBody);

      if (saveResponse.isSuccess) {
        // 3. Set Transaction Status
        final statusBody = SetTransactionStatusRequestBody(
          draftId: draftId,
          isApproved: true,
        );

        final statusResponse = await _setTransactionStatusU.call(statusBody);

        statusResponse.when(
          success: (_) => emit(RequestMoneyState.requestApprovedSuccess(form)),
          failure: (e) =>
              emit(RequestMoneyState.failure(form, message: e.message)),
        );
      } else {
        emit(
          RequestMoneyState.failure(
            form,
            message: saveResponse.errorOrNull!.message,
          ),
        );
      }
    } else {
      emit(
        RequestMoneyState.failure(
          form,
          message: checkPinResponse.errorOrNull!.message,
        ),
      );
    }
  }

  Future<void> rejectPendingRequest({
    required TransactionItemEntity transaction,
  }) async {
    final form = state.formState;
    emit(RequestMoneyState.loading(form));

    final statusBody = SetTransactionStatusRequestBody(
      draftId: transaction.id,
      isApproved: false,
    );

    final statusResponse = await _setTransactionStatusU.call(statusBody);

    statusResponse.when(
      success: (_) => emit(RequestMoneyState.requestRejectedSuccess(form)),
      failure: (e) => emit(RequestMoneyState.failure(form, message: e.message)),
    );
  }

  void onUserInfoChanged(String value) {
    final userInfo = UserInfo.dirty(value);
    _validate(state.formState.copyWith(userInfo: userInfo));
  }

  void onAmountChanged(String value) {
    final amount = Amount.dirty(value);
    _validate(state.formState.copyWith(amount: amount));
  }

  void onDescriptionChanged(String value) {
    _validate(state.formState.copyWith(description: value));
  }

  void _validate(RequestMoneyFormState form) {
    final isValid = Formz.validate([form.userInfo, form.amount]);
    final updatedForm = form.copyWith(isValid: isValid);
    emit(RequestMoneyState.initial(updatedForm));
  }
}
