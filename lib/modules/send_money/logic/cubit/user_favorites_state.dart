import 'package:freezed_annotation/freezed_annotation.dart';
import '../entity/user_favorites_entity.dart';

part 'user_favorites_state.freezed.dart';

@freezed
sealed class UserFavoritesState with _$UserFavoritesState {
  const factory UserFavoritesState.initial() = _Initial;
  const factory UserFavoritesState.loading() = Loading;
  const factory UserFavoritesState.success(List<FavoriteItemEntity> favorites) =
      Success;
  const factory UserFavoritesState.failure(String message) = Failure;
}
