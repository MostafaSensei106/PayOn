import '../../../logic/entities/country_entity.dart';
import 'get_all_countries_response_body.dart';

extension GetAllCountriesResponseBodyMapper on GetAllCountriesResponseBody {
  CountryEntity toEntity() {
    return CountryEntity(
      items: data.items.map((item) => item.toEntity()).toList(),
      totalItems: data.totalItems,
    );
  }
}

extension CountryItemMapper on CountryItem {
  CountryItemEntity toEntity() {
    return CountryItemEntity(
      id: id,
      name: name,
      phoneCode: phoneCode,
      numCode: numCode,
      iso: iso,
      code: code,
      isActive: isActive,
    );
  }
}
