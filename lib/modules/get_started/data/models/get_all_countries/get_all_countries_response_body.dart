import 'package:json_annotation/json_annotation.dart';

part 'get_all_countries_response_body.g.dart';

@JsonSerializable()
class GetAllCountriesResponseBody {
  const GetAllCountriesResponseBody({
    required this.code,
    required this.message,
    required this.data,
  });

  factory GetAllCountriesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetAllCountriesResponseBodyFromJson(json);

  final int code;
  final String message;
  final CountriesData data;
}

@JsonSerializable()
class CountriesData {
  const CountriesData({required this.totalItems, required this.items});

  factory CountriesData.fromJson(Map<String, dynamic> json) =>
      _$CountriesDataFromJson(json);

  final int totalItems;
  final List<CountryItem> items;
}

@JsonSerializable()
class CountryItem {
  const CountryItem({
    required this.id,
    required this.name,
    required this.arName,
    required this.trName,
    required this.nicename,
    required this.numCode,
    required this.phoneCode,
    required this.iso,
    required this.code,
    required this.isActive,
  });

  factory CountryItem.fromJson(Map<String, dynamic> json) =>
      _$CountryItemFromJson(json);

  final int id;
  final String name;
  final String arName;
  final String trName;
  final String nicename;
  final int numCode;
  final int phoneCode;
  final String iso;
  final String code;
  final bool isActive;
}
