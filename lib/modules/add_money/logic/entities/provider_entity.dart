import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_entity.freezed.dart';
part 'provider_entity.g.dart';

@freezed
abstract class ProviderEntity with _$ProviderEntity {
  const factory ProviderEntity({
    required String providerid,
    required String providerName,
    required double lat,
    required double lng,
    required String providerPhone,
    required String providerAddress,
    String? providerImage,
  }) = _ProviderEntity;

  factory ProviderEntity.fromJson(Map<String, dynamic> json) =>
      _$ProviderEntityFromJson(json);
}
