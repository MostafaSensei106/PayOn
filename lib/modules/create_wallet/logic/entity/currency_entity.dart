import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.freezed.dart';

@freezed
abstract class CurrencyEntity with _$CurrencyEntity {
  const factory CurrencyEntity({
    required int id,
    required String name,
    required String code,
    required String symbol,
    required String country,
  }) = _CurrencyEntity;
}
