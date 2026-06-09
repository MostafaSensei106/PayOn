import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/result/result.dart';
import '../entity/params/get_user_favorites_params.dart';
import '../usecase/get_user_favorites_usecase.dart';
import 'user_favorites_state.dart';

@injectable
class UserFavoritesCubit extends Cubit<UserFavoritesState> {
  UserFavoritesCubit(this._getFavoritesUsecase)
    : super(const UserFavoritesState.initial());

  final GetUserFavoritesUsecase _getFavoritesUsecase;

  Future<void> getUserFavorites() async {
    emit(const UserFavoritesState.loading());

    final response = await _getFavoritesUsecase.call(
      const GetUserFavoritesParams(),
    );

    response.when(
      success: (data) => emit(UserFavoritesState.success(data.items)),
      failure: (error) => emit(UserFavoritesState.failure(error.message)),
    );
  }
}
