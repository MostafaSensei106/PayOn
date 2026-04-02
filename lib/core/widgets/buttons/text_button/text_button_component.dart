import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payon/core/constants/app_config.dart';

class TextButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool useInBorderRadius;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const TextButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.backgroundColor,
    this.foregroundColor,
  }) : icon = null;

  const TextButtonComponent.icon({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: useInBorderRadius
            ? BorderRadius.circular(AppConfig.inBorderRadius)
            : BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    );

    return icon == null
        ? TextButton(
            onPressed: () {
              HapticFeedback.vibrate();
              onPressed();
            },
            style: style,
            child: Text(label),
          )
        : TextButton.icon(
            onPressed: () {
              HapticFeedback.vibrate();
              onPressed();
            },
            style: style,
            icon: Icon(icon, size: AppConfig.iconSize),
            label: Text(label),
          );
  }
}
