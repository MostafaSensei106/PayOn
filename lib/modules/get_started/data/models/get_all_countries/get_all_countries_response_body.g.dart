// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_countries_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCountriesResponseBody _$GetAllCountriesResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetAllCountriesResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: CountriesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetAllCountriesResponseBodyToJson(
  GetAllCountriesResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

CountriesData _$CountriesDataFromJson(Map<String, dynamic> json) =>
    CountriesData(
      totalItems: (json['totalItems'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => CountryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountriesDataToJson(CountriesData instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

CountryItem _$CountryItemFromJson(Map<String, dynamic> json) => CountryItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  arName: json['arName'] as String,
  trName: json['trName'] as String,
  nicename: json['nicename'] as String,
  numCode: (json['numCode'] as num).toInt(),
  phoneCode: (json['phoneCode'] as num).toInt(),
  iso: json['iso'] as String,
  code: json['code'] as String,
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$CountryItemToJson(CountryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'arName': instance.arName,
      'trName': instance.trName,
      'nicename': instance.nicename,
      'numCode': instance.numCode,
      'phoneCode': instance.phoneCode,
      'iso': instance.iso,
      'code': instance.code,
      'isActive': instance.isActive,
    };
