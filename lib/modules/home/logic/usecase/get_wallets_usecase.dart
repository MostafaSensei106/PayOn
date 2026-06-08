import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../data/repository/wallets_repostory.dart';
import '../entitys/params/get_wallet_params.dart';
import '../entitys/wallets_entity.dart';

@injectable
final class GetWalletsUsecase
    implements BaseUseCase<WalletsEntity, GetWalletParams> {
  GetWalletsUsecase({required this._repo});

  final WalletsRepostory _repo;

  @override
  Future<Result<WalletsEntity, Failures>> call(GetWalletParams params) =>
      _repo.getWallets(params: params);
}
