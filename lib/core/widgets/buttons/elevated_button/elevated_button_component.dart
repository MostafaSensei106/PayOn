import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payon/core/constants/app_config.dart';

class ElevatedButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool useInBorderRadius;
  final IconData? icon;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const ElevatedButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  }) : icon = null;

  const ElevatedButtonComponent.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
    this.useInBorderRadius = false,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return icon == null
        ? ElevatedButton(
            onPressed: () {
              HapticFeedback.vibrate();
              onPressed();
            },
            style: _getButtonStyle(context),
            child: Text(label),
          )
        : ElevatedButton.icon(
            onPressed: () {
              HapticFeedback.vibrate();
              onPressed();
            },
            style: _getButtonStyle(context),
            icon: Icon(icon, size: AppConfig.iconSize),
            label: Text(label),
          );
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.primary,
      elevation: AppConfig.buttonElevation,
      minimumSize: Size(width ?? double.infinity, height ?? 8),
      shape: RoundedRectangleBorder(
        borderRadius: useInBorderRadius
            ? BorderRadius.circular(AppConfig.inBorderRadius)
            : BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    );
  }
}
