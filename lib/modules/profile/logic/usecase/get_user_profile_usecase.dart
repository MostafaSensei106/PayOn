import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repository/user_profile_repository.dart';
import '../entity/user_profile_entity.dart';

@injectable
class GetUserProfileUsecase
    implements BaseUseCase<UserProfileEntity, NoParams> {
  GetUserProfileUsecase({required this._repo});

  final UserProfileRepository _repo;

  @override
  Future<Result<UserProfileEntity, Failures>> call(NoParams params) =>
      _repo.getUserProfile();
}
