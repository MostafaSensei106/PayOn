import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payon/core/constants/app_config.dart';

class FilledTonalButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const FilledTonalButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  }) : icon = null;

  const FilledTonalButtonComponent.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return icon == null
        ? FilledButton.tonal(
            onPressed: () {
              HapticFeedback.vibrate();
              onPressed();
            },
            style: _getButtonStyle(context),
            child: Text(label),
          )
        : FilledButton.tonalIcon(
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
    return FilledButton.styleFrom(
      enableFeedback: true,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.secondaryContainer,
      foregroundColor:
          foregroundColor ?? Theme.of(context).colorScheme.onSecondaryContainer,
      minimumSize: Size(
        width ?? double.infinity,
        height ?? AppConfig.buttonHeight,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    );
  }
}
