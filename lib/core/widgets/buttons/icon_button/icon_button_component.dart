import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_constants.dart';

enum IconButtonVariant { standard, filled, tonal, outlined }

class IconButtonComponent extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final IconButtonVariant variant;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? iconSize;

  const IconButtonComponent({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
  }) : variant = IconButtonVariant.standard;

  const IconButtonComponent.filled({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
  }) : variant = IconButtonVariant.filled;

  const IconButtonComponent.tonal({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
  }) : variant = IconButtonVariant.tonal;

  const IconButtonComponent.outlined({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
  }) : variant = IconButtonVariant.outlined;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case IconButtonVariant.standard:
        return IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
          color: foregroundColor ?? Theme.of(context).colorScheme.primary,
        );
      case IconButtonVariant.filled:
        return IconButton.filled(
          icon: Icon(icon),
          onPressed: onPressed,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.borderRadius),
            ),
            backgroundColor:
                backgroundColor ?? Theme.of(context).colorScheme.primary,
            foregroundColor:
                foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
        );
      case IconButtonVariant.tonal:
        return IconButton.filledTonal(
          icon: Icon(icon),
          onPressed: onPressed,
          style: IconButton.styleFrom(
            backgroundColor:
                backgroundColor ??
                Theme.of(context).colorScheme.secondaryContainer,
            foregroundColor:
                foregroundColor ??
                Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        );
      case IconButtonVariant.outlined:
        return IconButton.outlined(
          icon: Icon(icon, size: iconSize),
          onPressed: onPressed,
          style: IconButton.styleFrom(
            side: BorderSide(
              color: backgroundColor ?? Theme.of(context).colorScheme.outline,
            ),
            foregroundColor:
                foregroundColor ?? Theme.of(context).colorScheme.primary,
          ),
        );
    }
  }
}
