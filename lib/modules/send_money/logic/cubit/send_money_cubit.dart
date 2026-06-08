import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/validator/user_info_validator.dart';
import '../../data/models/check_wallet/check_wallet_request_body.dart';
import '../usecase/check_wallet_usecase.dart';
import 'send_money_state.dart';

@injectable
class SendMoneyCubit extends Cubit<SendMoneyState> {
  SendMoneyCubit(this._u)
    : super(const SendMoneyState.initial(SendMoneyFormState()));

  final CheckWalletUsecase _u;

  Future<void> checkWallet() async {
    if (state.formState.isValid == false) return;

    final form = state.formState;

    emit(SendMoneyState.loading(form));

    final body = CheckWalletRequestBody(userInfo: form.userInfo.value);

    final response = await _u.call(body);

    response.when(
      success: (t) => emit(SendMoneyState.success(form, data: t)),
      failure: (e) => emit(SendMoneyState.failure(form, message: e.message)),
    );
  }

  void onUserInfChanged(String value) {
    final userInfo = UserInfo.dirty(value);
    _validate(state.formState.copyWith(userInfo: userInfo));
  }

  void _validate(SendMoneyFormState form) {
    final isValid = Formz.validate([form.userInfo]);
    final updatedForm = form.copyWith(isValid: isValid);
    emit(SendMoneyState.initial(updatedForm));
  }
}
