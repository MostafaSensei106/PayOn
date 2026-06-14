import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../usecase/get_pending_transactions_usecase.dart';
import 'request_money_state.dart';

@injectable
class RequestMoneyCubit extends Cubit<RequestMoneyState> {
  RequestMoneyCubit(this._getPendingTransactionsU)
    : super(const RequestMoneyState.initial());

  final GetPendingTransactionsUseCase _getPendingTransactionsU;

  Future<void> getPendingRequests() async {
    emit(const RequestMoneyState.loading());

    final result = await _getPendingTransactionsU.call(const NoParams());

    if (result.isSuccess) {
      emit(RequestMoneyState.success(requests: result.dataOrNull!));
    } else {
      emit(RequestMoneyState.failure(message: result.errorOrNull!.message));
    }
  }
}
