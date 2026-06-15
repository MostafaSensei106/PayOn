import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/entities/provider_entity.dart';

part 'get_providers_response_body.freezed.dart';
part 'get_providers_response_body.g.dart';

@freezed
abstract class GetProvidersResponseBody with _$GetProvidersResponseBody {
  const factory GetProvidersResponseBody({
    required int code,
    required String message,
    required GetProvidersData data,
  }) = _GetProvidersResponseBody;

  factory GetProvidersResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetProvidersResponseBodyFromJson(json);
}

@freezed
abstract class GetProvidersData with _$GetProvidersData {
  const factory GetProvidersData({
    required int totalItems,
    required int pageNumber,
    required int pageSize,
    required List<ProviderEntity> items,
    required int totalPages,
  }) = _GetProvidersData;

  factory GetProvidersData.fromJson(Map<String, dynamic> json) =>
      _$GetProvidersDataFromJson(json);
}
