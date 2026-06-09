import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../entitys/params/get_wallet_params.dart';
import '../usecase/get_wallets_usecase.dart';
import 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._u) : super(const HomeState.initial());

  final GetWalletsUsecase _u;

  Future<void> getWallets() async {
    emit(const HomeState.loading());
    final response = await _u.call(const GetWalletParams());

    response.when(
      success: (t) => emit(HomeState.success(data: t)),
      failure: (e) => emit(HomeState.failure(message: e.message)),
    );
  }
}
