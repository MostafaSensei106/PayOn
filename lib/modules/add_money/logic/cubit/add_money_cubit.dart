import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../usecase/get_providers_usecase.dart';
import 'add_money_state.dart';

@injectable
class AddMoneyCubit extends Cubit<AddMoneyState> {
  AddMoneyCubit(this._getProvidersUsecase)
    : super(const AddMoneyState.initial());

  final GetProvidersUsecase _getProvidersUsecase;

  Future<void> getProviders() async {
    emit(const AddMoneyState.loading());
    final result = await _getProvidersUsecase.call(const NoParams());
    result.when(
      success: (response) =>
          emit(AddMoneyState.providersLoaded(response: response)),
      failure: (error) => emit(AddMoneyState.failure(message: error.message)),
    );
  }
}
