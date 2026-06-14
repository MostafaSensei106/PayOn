import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/services/hash_service/base_hash_service.dart';
import '../../../../core/utils/validator/amount_validator.dart';
import '../../../../core/utils/validator/user_info_validator.dart';
import '../../data/models/check_wallet/check_wallet_request_body.dart';
import '../../data/models/check_wallet_pin/check_wallet_pin_request_body.dart';
import '../../data/models/save_transaction/save_transaction_request_body.dart';
import '../entity/params/create_transaction_params.dart';
import '../usecase/check_wallet_pin_usecase.dart';
import '../usecase/check_wallet_usecase.dart';
import '../usecase/create_transaction_draft_usecase.dart';
import '../usecase/save_transaction_usecase.dart';
import 'send_money_state.dart';

@injectable
final class SendMoneyCubit extends Cubit<SendMoneyState> {
  SendMoneyCubit(
    this._checkWalletU,
    this._createDraftU,
    this._checkPinU,
    this._saveTransactionU,
    this._hashService,
  ) : super(const SendMoneyState.initial(SendMoneyFormState()));

  final CheckWalletUsecase _checkWalletU;
  final CreateTransactionDraftUsecase _createDraftU;
  final CheckWalletPinUsecase _checkPinU;
  final SaveTransactionUsecase _saveTransactionU;
  final BaseHashService _hashService;

  Future<void> checkWallet() async {
    if (state.formState.isValid == false) return;

    final form = state.formState;

    emit(SendMoneyState.loading(form));

    final body = CheckWalletRequestBody(userInfo: form.userInfo.value);

    final response = await _checkWalletU.call(body);

    response.when(
      success: (t) => emit(SendMoneyState.success(form, data: t)),
      failure: (e) => emit(SendMoneyState.failure(form, message: e.message)),
    );
  }

  Future<void> createTransactionDraft({
    required String senderId,
    required String receiverId,
    required bool isTransactionByPhone,
  }) async {
    if (state.formState.isValid == false) return;

    final form = state.formState;

    emit(SendMoneyState.loading(form));

    final params = CreateTransactionParams(
      senderId: senderId,
      receiverId: receiverId,
      paymentId: '',
      amount: double.parse(form.amount.value),
      description: form.description,
      isTransactionByPhone: isTransactionByPhone,
    );

    final response = await _createDraftU.call(params);

    response.when(
      success: (t) =>
          emit(SendMoneyState.transactionDraftSuccess(form, draft: t)),
      failure: (e) => emit(SendMoneyState.failure(form, message: e.message)),
    );
  }

  Future<void> confirmTransaction({
    required String pin,
    required String walletId,
    required List<int> draftIds,
  }) async {
    final form = state.formState;
    emit(SendMoneyState.loading(form));

    final pinHash = await _hashService.hash(pin);

    final checkPinBody = CheckWalletPinRequestBody(
      walletId: walletId,
      pinHash: pinHash,
    );

    final checkPinResponse = await _checkPinU.call(checkPinBody);

    checkPinResponse.when(
      success: (pinData) async {
        final saveTransactionBody = SaveTransactionRequestBody(
          draftids: draftIds,
          walletId: walletId,
          otp: pinData.otp,
          isAcceptRequest: false,
        );

        final saveResponse = await _saveTransactionU.call(saveTransactionBody);

        saveResponse.when(
          success: (data) =>
              emit(SendMoneyState.transactionSaved(form, data: data)),
          failure: (e) =>
              emit(SendMoneyState.failure(form, message: e.message)),
        );
      },
      failure: (e) => emit(SendMoneyState.failure(form, message: e.message)),
    );
  }

  void onUserInfChanged(String value) {
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

  void _validate(SendMoneyFormState form) {
    final isValid = Formz.validate([form.userInfo, form.amount]);
    final updatedForm = form.copyWith(isValid: isValid);
    emit(SendMoneyState.initial(updatedForm));
  }
}
