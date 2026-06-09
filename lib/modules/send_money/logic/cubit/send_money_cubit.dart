import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/validator/amount_validator.dart';
import '../../../../core/utils/validator/user_info_validator.dart';
import '../../data/models/check_wallet/check_wallet_request_body.dart';
import '../entity/params/create_transaction_params.dart';
import '../usecase/check_wallet_usecase.dart';
import '../usecase/create_transaction_draft_usecase.dart';
import 'send_money_state.dart';

@injectable
final class SendMoneyCubit extends Cubit<SendMoneyState> {
  SendMoneyCubit(this._checkWalletU, this._createDraftU)
    : super(const SendMoneyState.initial(SendMoneyFormState()));

  final CheckWalletUsecase _checkWalletU;
  final CreateTransactionDraftUsecase _createDraftU;

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
      paymentId: '', // TODO: What is paymentId?
      amount: double.parse(form.amount.value),
      description: '',
      isTransactionByPhone: isTransactionByPhone,
    );

    final response = await _createDraftU.call(params);

    response.when(
      success: (t) => emit(SendMoneyState.transactionDraftSuccess(form)),
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

  void _validate(SendMoneyFormState form) {
    final isValid = Formz.validate([form.userInfo, form.amount]);
    final updatedForm = form.copyWith(isValid: isValid);
    emit(SendMoneyState.initial(updatedForm));
  }
}
