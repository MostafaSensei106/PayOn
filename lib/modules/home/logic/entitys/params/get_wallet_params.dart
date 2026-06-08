import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wallet_params.freezed.dart';

@freezed
abstract class GetWalletParams with _$GetWalletParams {
  const factory GetWalletParams({@Default(1) int page, @Default(20) int size}) =
      _GetWalletParams;
}
