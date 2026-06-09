import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/user_favorites_entity.dart';

part 'get_user_favorites_response_body.g.dart';

@JsonSerializable()
class GetUserFavoritesResponseBody {
  GetUserFavoritesResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.errors,
    required this.success,
  });

  factory GetUserFavoritesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetUserFavoritesResponseBodyFromJson(json);

  final int code;
  final String message;
  final FavoritesData data;
  final List<String> errors;
  final bool success;
}

@JsonSerializable()
class FavoritesData {
  FavoritesData({
    required this.totalItems,
    required this.pageNumber,
    required this.pageSize,
    required this.items,
    required this.totalPages,
  });

  factory FavoritesData.fromJson(Map<String, dynamic> json) =>
      _$FavoritesDataFromJson(json);

  final int totalItems;
  final int pageNumber;
  final int pageSize;
  final List<dynamic> items;
  final int totalPages;
}

extension GetUserFavoritesMapper on GetUserFavoritesResponseBody {
  UserFavoritesEntity toEntity() {
    return UserFavoritesEntity();
  }
}
