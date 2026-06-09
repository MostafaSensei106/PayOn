import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_favorites_entity.freezed.dart';

@freezed
abstract class UserFavoritesEntity with _$UserFavoritesEntity {
  const factory UserFavoritesEntity({
    @Default(0) int totalItems,
    @Default(0) int totalPages,
    @Default([]) List<FavoriteItemEntity> items,
  }) = _UserFavoritesEntity;
}

@freezed
abstract class FavoriteItemEntity with _$FavoriteItemEntity {
  const factory FavoriteItemEntity({
    required String id,
    required String name,
    required String image,
  }) = _FavoriteItemEntity;
}
