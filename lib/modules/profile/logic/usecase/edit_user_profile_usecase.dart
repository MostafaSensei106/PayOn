import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/models/edit_user_porfile_response_body.dart';
import '../../data/models/edit_user_profile_request_body.dart';
import '../../data/repository/user_profile_repository.dart';

@injectable
class EditUserProfileUsecase
    implements
        BaseUseCase<EditUserPorfileResponseBody, EditUserProfileRequestBody> {
  EditUserProfileUsecase({required this._repo});

  final UserProfileRepository _repo;

  @override
  Future<Result<EditUserPorfileResponseBody, Failures>> call(
    EditUserProfileRequestBody params,
  ) => _repo.editUserProfile(params);
}
