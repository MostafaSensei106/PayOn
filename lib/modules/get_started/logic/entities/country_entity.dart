import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity.freezed.dart';

@freezed
abstract class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    required List<CountryItemEntity> items,
    required int totalItems,
  }) = _CountryEntity;
}

@freezed
abstract class CountryItemEntity with _$CountryItemEntity {
  const factory CountryItemEntity({
    required int id,
    required String name,
    required int phoneCode,
    required int numCode,
    required String iso,
    required String code,
    required bool isActive,
  }) = _CountryItemEntity;
}
