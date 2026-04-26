import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/security_settings_model.dart';

part 'security_state.freezed.dart';

@freezed
sealed class SecurityState with _$SecurityState {
  const factory SecurityState.initial() = _Initial;
  const factory SecurityState.loading() = Loading;
  const factory SecurityState.success(SecuritySettingsModel settings) = Success;
  const factory SecurityState.failure(String message) = Failure;
}
