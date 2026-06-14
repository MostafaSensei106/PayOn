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
  data: CurrenciesData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>,
  success: json['success'] as bool,
);

Map<String, dynamic> _$GetCurrenciesResponseBodyToJson(
  GetCurrenciesResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
  'success': instance.success,
};

CurrenciesData _$CurrenciesDataFromJson(Map<String, dynamic> json) =>
    CurrenciesData(
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => CurrencyItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrenciesDataToJson(CurrenciesData instance) =>
    <String, dynamic>{'currencies': instance.currencies};

CurrencyItem _$CurrencyItemFromJson(Map<String, dynamic> json) => CurrencyItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  code: json['code'] as String,
  countryCode: json['countryCode'] as String,
);

Map<String, dynamic> _$CurrencyItemToJson(CurrencyItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'countryCode': instance.countryCode,
    };
