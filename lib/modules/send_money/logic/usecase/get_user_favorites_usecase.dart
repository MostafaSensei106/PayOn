import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repository/send_money_repository.dart';
import '../entity/params/get_user_favorites_params.dart';
import '../entity/user_favorites_entity.dart';

@injectable
class GetUserFavoritesUsecase
    implements BaseUseCase<UserFavoritesEntity, GetUserFavoritesParams> {
  GetUserFavoritesUsecase({required this._repo});

  final SendMoneyRepository _repo;

  @override
  Future<Result<UserFavoritesEntity, Failures>> call(
    GetUserFavoritesParams params,
  ) => _repo.getUserFavorites(params);
}
