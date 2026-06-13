import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart' hide Success;
import '../../../get_started/data/models/register/create_account_request_body.dart';
import '../../../get_started/logic/use_cases/create_account_use_case.dart';
import '../entity/params/get_transactions_params.dart';
import '../entitys/params/get_wallet_params.dart';
import '../usecase/get_transactions_usecase.dart';
import '../usecase/get_wallets_usecase.dart';
import 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getWalletsU,
    this._getTransactionsU,
    this._createAccountUseCase,
  ) : super(const HomeState.initial());

  final GetWalletsUsecase _getWalletsU;
  final GetTransactionsUsecase _getTransactionsU;
  final CreateAccountUseCase _createAccountUseCase;

  Future<void> getWallets() async {
    emit(const HomeState.loading());
    final response = await _getWalletsU.call(const GetWalletParams());

    response.when(
      success: (t) {
        emit(HomeState.success(wallets: t, isTransactionsLoading: true));
        unawaited(getLatestTransactions());
      },
      failure: (e) => emit(HomeState.failure(message: e.message)),
    );
  }

  Future<void> getLatestTransactions() async {
    final currentState = state;
    if (currentState is! Success) return;

    emit(currentState.copyWith(isTransactionsLoading: true));

    final response = await _getTransactionsU.call(
      currentState.transactionFilters,
    );

    if (state is! Success) return;

    response.when(
      success: (t) => emit(
        (state as Success).copyWith(
          isTransactionsLoading: false,
          transactions: t.data.items,
        ),
      ),
      failure: (e) =>
          emit((state as Success).copyWith(isTransactionsLoading: false)),
    );
  }

  void applyTransactionFilters(GetTransactionsParams filters) {
    final currentState = state;
    if (currentState is! Success) return;

    emit(currentState.copyWith(transactionFilters: filters));
    unawaited(getLatestTransactions());
  }

  Future<String?> createAccount({required int accountTypeId}) async {
    final result = await _createAccountUseCase(
      CreateAccountRequestBody(accountTypeId: accountTypeId),
    );

    return result.fold(
      onSuccess: (data) => data.accountId,
      onFailure: (error) {
        emit(HomeState.failure(message: error.message));
        return null;
      },
    );
  }
}
