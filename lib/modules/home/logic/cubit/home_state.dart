import 'package:freezed_annotation/freezed_annotation.dart';
import '../entitys/wallets_entity.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success({required WalletsEntity data}) = Success;
  const factory HomeState.failure({required String message}) = Failure;
}
