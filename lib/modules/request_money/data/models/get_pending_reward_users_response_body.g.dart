// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pending_reward_users_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPendingRewardUsersResponseBody _$GetPendingRewardUsersResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetPendingRewardUsersResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: PendingRewardUsersData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>,
  success: json['success'] as bool,
);

Map<String, dynamic> _$GetPendingRewardUsersResponseBodyToJson(
  GetPendingRewardUsersResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'success': instance.success,
};

PendingRewardUsersData _$PendingRewardUsersDataFromJson(
  Map<String, dynamic> json,
) => PendingRewardUsersData(
  totalItems: (json['totalItems'] as num).toInt(),
  pageNumber: (json['pageNumber'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  items: json['items'] as List<dynamic>,
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$PendingRewardUsersDataToJson(
  PendingRewardUsersData instance,
) => <String, dynamic>{
  'totalItems': instance.totalItems,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'items': instance.items,
  'totalPages': instance.totalPages,
};
