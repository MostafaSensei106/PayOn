import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_settings_model.freezed.dart';

@freezed
sealed class SecuritySettingsModel with _$SecuritySettingsModel {
  const factory SecuritySettingsModel({
    @Default(false) bool isFingerprintEnabled,
    @Default(false) bool isDeviceSupported,
  }) = _SecuritySettingsModel;
}
