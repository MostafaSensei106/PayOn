import 'package:json_annotation/json_annotation.dart';

part 'get_pending_reward_users_response_body.g.dart';

@JsonSerializable()
class GetPendingRewardUsersResponseBody {
  const GetPendingRewardUsersResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.errors,
    required this.success,
  });

  factory GetPendingRewardUsersResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetPendingRewardUsersResponseBodyFromJson(json);

  final int code;
  final String message;
  final PendingRewardUsersData data;
  final List<dynamic> errors;
  final bool success;

  Map<String, dynamic> toJson() => _$GetPendingRewardUsersResponseBodyToJson(this);
}

@JsonSerializable()
class PendingRewardUsersData {
  const PendingRewardUsersData({
    required this.totalItems,
    required this.pageNumber,
    required this.pageSize,
    required this.items,
    required this.totalPages,
  });

  factory PendingRewardUsersData.fromJson(Map<String, dynamic> json) =>
      _$PendingRewardUsersDataFromJson(json);

  final int totalItems;
  final int pageNumber;
  final int pageSize;
  final List<dynamic> items; // Using dynamic as the item structure is unknown
  final int totalPages;

  Map<String, dynamic> toJson() => _$PendingRewardUsersDataToJson(this);
}
