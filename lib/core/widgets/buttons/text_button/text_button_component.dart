import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../constants/app_config.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent({
    required this.label,
    required this.onPressed,
    super.key,
    this.useInBorderRadius = false,
    this.backgroundColor,
    this.foregroundColor,
  }) : icon = null;

  const TextButtonComponent.icon({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key,
    this.useInBorderRadius = false,
    this.backgroundColor,
    this.foregroundColor,
  });
  final String label;
  final VoidCallback onPressed;
  final bool useInBorderRadius;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(final BuildContext context) {
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
