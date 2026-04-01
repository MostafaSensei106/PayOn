import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_constants.dart';

class ElevatedButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const ElevatedButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
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
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return icon == null
        ? ElevatedButton(
            onPressed: onPressed,
            style: _getButtonStyle(context),
            child: Text(label),
          )
        : ElevatedButton.icon(
            onPressed: onPressed,
            style: _getButtonStyle(context),
            icon: Icon(icon, size: AppConstants.iconSize),
            label: Text(label),
          );
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.primary,
      elevation: AppConstants.buttonElevation,
      minimumSize: Size(width ?? double.infinity, height ?? 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.inBorderRadius),
      ),
    );
  }
}
