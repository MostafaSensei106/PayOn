import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/models/app_info_model.dart';

part 'about_app_state.freezed.dart';

@freezed
sealed class AboutAppState with _$AboutAppState {
  const factory AboutAppState.initial() = _Initial;
  const factory AboutAppState.loading() = Loading;
  const factory AboutAppState.success({required AppInfoModel data}) = Success;
  const factory AboutAppState.error({required String message}) = Error;
}
