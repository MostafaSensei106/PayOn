import 'package:injectable/injectable.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/get_all_countries/get_all_countries_mapper.dart';
import '../../data/repositories/register/base_register_repository.dart';
import '../entities/country_entity.dart';

@injectable
class GetAllCountriesUseCase implements BaseUseCase<CountryEntity, NoParams> {
  GetAllCountriesUseCase(this._repository);

  final BaseRegisterRepository _repository;

  @override
  Future<ApiResult<CountryEntity>> call(NoParams params) async {
    final result = await _repository.getCountries();
    return result.fold(
      onSuccess: (response) => ApiResult.success(data: response.toEntity()),
      onFailure: (error) => ApiResult.failure(error: error),
    );
  }
}
