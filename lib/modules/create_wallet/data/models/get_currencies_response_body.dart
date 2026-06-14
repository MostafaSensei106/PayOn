import 'package:json_annotation/json_annotation.dart';

import '../../logic/entity/currency_entity.dart';

part 'get_currencies_response_body.g.dart';

@JsonSerializable()
class GetCurrenciesResponseBody {
  const GetCurrenciesResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.errors,
    required this.success,
  });

  factory GetCurrenciesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetCurrenciesResponseBodyFromJson(json);

  final int code;
  final String message;
  final CurrenciesData data;
  final List<dynamic> errors;
  final bool success;
}

@JsonSerializable()
class CurrenciesData {
  const CurrenciesData({required this.currencies});

  factory CurrenciesData.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesDataFromJson(json);

  final List<CurrencyItem> currencies;
}

@JsonSerializable()
class CurrencyItem {
  const CurrencyItem({
    required this.id,
    required this.name,
    required this.code,
    required this.countryCode,
  });

  factory CurrencyItem.fromJson(Map<String, dynamic> json) =>
      _$CurrencyItemFromJson(json);

  final int id;
  final String name;
  final String code;
  final String countryCode;
}

extension CurrencyItemMapper on CurrencyItem {
  CurrencyEntity toEntity() => CurrencyEntity(
    id: id,
    name: name,
    code: code,
    symbol: '',
    country: countryCode,
  );
}
