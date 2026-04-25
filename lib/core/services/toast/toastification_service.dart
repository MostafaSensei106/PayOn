import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:toastification/toastification.dart';

import '../../constants/app_config.dart';
import '../../di/di.dart';
import '../l10n/l10n_service.dart';
import '../theme/theme_service.dart';
import 'base_toast_service.dart';

final class ToastificationService implements BaseToastService {
  @override
  void showError(BuildContext context, String message) {
    final l10n = getIt<L10nService>().get(context);

    _showToast(
      context: context,
      type: ToastificationType.error,
      icon: Iconsax.cloud_cross_copy,
      title: Text(l10n.error),
      description: Text(message),
      showProgressBar: true,
    );
  }

  @override
  void showInfo(BuildContext context, String message) {
    final l10n = getIt<L10nService>().get(context);
    _showToast(
      context: context,
      type: ToastificationType.info,
      title: Text(l10n.info),
      icon: Iconsax.information_copy,
      description: Text(message),
      showProgressBar: true,
    );
  }

  @override
  void showSimple(BuildContext context, String message) {
    _showToast(
      context: context,
      type: ToastificationType.info,
      style: ToastificationStyle.simple,
      title: Text(message),
    );
  }

  @override
  void showSuccess(BuildContext context, String message) {
    final l10n = getIt<L10nService>().get(context);

    _showToast(
      context: context,
      type: ToastificationType.success,
      icon: Iconsax.tick_circle_copy,
      title: Text(l10n.success),
      description: Text(message),
      showProgressBar: true,
    );
  }

  @override
  void showWarning(BuildContext context, String message) {
    final l10n = getIt<L10nService>().get(context);

    _showToast(
      context: context,
      type: ToastificationType.warning,
      title: Text(l10n.warning),
      icon: Iconsax.warning_2_copy,
      description: Text(message),
      showProgressBar: true,
    );
  }

  void _showToast({
    required BuildContext context,
    required ToastificationType type,
    required Widget title,
    ToastificationStyle? style = ToastificationStyle.minimal,
    IconData? icon,

    Widget? description,
    bool showProgressBar = false,
  }) {
    final colorScheme = getIt<ThemeService>().get(context);

    toastification.show(
      type: type,
      style: style,
      title: title,
      description: description,
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 4),
      padding: const EdgeInsets.symmetric(
        vertical: AppConfig.padding,
        horizontal: AppConfig.paddingHalf,
      ),
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),

      dragToClose: true,
      pauseOnHover: true,
      showProgressBar: showProgressBar,
      icon: Container(
        padding: const EdgeInsets.all(AppConfig.paddingQuarter + 2),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          color: colorScheme.onPrimaryContainer,
          size: AppConfig.iconSize,
        ),
      ),
      progressBarTheme: ProgressIndicatorThemeData(
        // ignore: deprecated_member_use
        year2023: false,
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    );
  }
}
