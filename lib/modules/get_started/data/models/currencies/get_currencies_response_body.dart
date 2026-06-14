import 'package:json_annotation/json_annotation.dart';
import '../../../../create_wallet/logic/entity/currency_entity.dart';

part 'get_currencies_response_body.g.dart';

@JsonSerializable()
class GetCurrenciesResponseBody {
  const GetCurrenciesResponseBody({
    required this.code,
    required this.message,
    required this.success,
    required this.data,
  });

  factory GetCurrenciesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetCurrenciesResponseBodyFromJson(json);

  final int code;
  final String message;
  final bool success;
  final List<CurrencyModel> data;

  Map<String, dynamic> toJson() => _$GetCurrenciesResponseBodyToJson(this);
}

@JsonSerializable()
class CurrencyModel {
  const CurrencyModel({
    required this.id,
    required this.name,
    required this.code,
    required this.symbol,
    required this.country,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  final int id;
  final String name;
  final String code;
  final String symbol;
  final String country;

  Map<String, dynamic> toJson() => _$CurrencyModelToJson(this);
}

extension CurrencyModelMapper on CurrencyModel {
  CurrencyEntity toEntity() => CurrencyEntity(
    id: id,
    name: name,
    code: code,
    symbol: symbol,
    country: country,
  );
}
