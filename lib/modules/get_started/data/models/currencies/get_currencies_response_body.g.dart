// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_currencies_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCurrenciesResponseBody _$GetCurrenciesResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetCurrenciesResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => CurrencyModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetCurrenciesResponseBodyToJson(
  GetCurrenciesResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'success': instance.success,
  'data': instance.data,
};

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    CurrencyModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$CurrencyModelToJson(CurrencyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'symbol': instance.symbol,
      'country': instance.country,
    };
