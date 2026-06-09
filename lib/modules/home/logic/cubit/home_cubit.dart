import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart' hide Success;
import '../entity/params/get_transactions_params.dart';
import '../entitys/params/get_wallet_params.dart';
import '../usecase/get_transactions_usecase.dart';
import '../usecase/get_wallets_usecase.dart';
import 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getWalletsU, this._getTransactionsU)
    : super(const HomeState.initial());

  final GetWalletsUsecase _getWalletsU;
  final GetTransactionsUsecase _getTransactionsU;

  Future<void> getWallets() async {
    emit(const HomeState.loading());
    final response = await _getWalletsU.call(const GetWalletParams());

    response.when(
      success: (t) {
        emit(HomeState.success(wallets: t));
        unawaited(getLatestTransactions());
      },
      failure: (e) => emit(HomeState.failure(message: e.message)),
    );
  }

  Future<void> getLatestTransactions() async {
    if (state is! Success) return;

    emit((state as Success).copyWith(isTransactionsLoading: true));

    final filters = (state as Success).transactionFilters;
    final response = await _getTransactionsU.call(filters);

    if (state is! Success) return;
    final currentState = state as Success;

    response.when(
      success: (t) => emit(
        currentState.copyWith(
          isTransactionsLoading: false,
          transactions: t.data.items,
        ),
      ),
      failure: (e) => emit(currentState.copyWith(isTransactionsLoading: false)),
    );
  }

  void applyTransactionFilters(GetTransactionsParams filters) {
    final currentState = state;
    if (currentState is! Success) return;

    emit(currentState.copyWith(transactionFilters: filters));
    unawaited(getLatestTransactions());
  }
}
