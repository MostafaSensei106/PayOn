import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_favorites_params.freezed.dart';

@freezed
abstract class GetUserFavoritesParams with _$GetUserFavoritesParams {
  const factory GetUserFavoritesParams({
    @Default(1) int page,
    @Default(20) int size,
    @Default('') String search,
    @Default(false) bool isAddedByIPA,
  }) = _GetUserFavoritesParams;
}
