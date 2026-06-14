import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/create_wallet_pin_request_body.dart';
import '../../data/models/create_wallet_request_body.dart';
import '../usecase/create_wallet_pin_usecase.dart';
import '../usecase/create_wallet_usecase.dart';
import '../usecase/get_currencies_usecase.dart';
import 'create_wallet_state.dart';

@injectable
class CreateWalletCubit extends Cubit<CreateWalletState> {
  CreateWalletCubit(
    this._getCurrenciesUseCase,
    this._createWalletUseCase,
    this._createWalletPinUseCase,
  ) : super(const CreateWalletState.initial());

  final GetCurrenciesUseCase _getCurrenciesUseCase;
  final CreateWalletUseCase _createWalletUseCase;
  final CreateWalletPinUseCase _createWalletPinUseCase;

  Future<void> getCurrencies() async {
    emit(const CreateWalletState.loading());
    final result = await _getCurrenciesUseCase(const NoParams());
    result.when(
      success: (currencies) =>
          emit(CreateWalletState.currenciesLoaded(currencies)),
      failure: (failure) => emit(CreateWalletState.failure(failure.message)),
    );
  }

  Future<void> createWallet({
    required String accountId,
    required String ipa,
    required int currencyId,
  }) async {
    emit(const CreateWalletState.loading());
    final result = await _createWalletUseCase(
      CreateWalletRequestBody(
        accountId: accountId,
        ipa: ipa,
        currencyId: currencyId,
      ),
    );
    result.when(
      success: (_) => emit(const CreateWalletState.walletCreated()),
      failure: (failure) => emit(CreateWalletState.failure(failure.message)),
    );
  }

  Future<void> createWalletPin({
    required String accountId,
    required String pinHash,
  }) async {
    emit(const CreateWalletState.loading());
    final result = await _createWalletPinUseCase(
      CreateWalletPinRequestBody(accountId: accountId, pinHash: pinHash),
    );
    result.when(
      success: (_) => emit(const CreateWalletState.pinCreated()),
      failure: (failure) => emit(CreateWalletState.failure(failure.message)),
    );
  }
}
