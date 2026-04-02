import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payon/core/constants/app_config.dart';

enum IconButtonVariant { standard, filled, tonal, outlined }

class IconButtonComponent extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final IconButtonVariant variant;
  final bool useInBorderRadius;

  final String? toolTip;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? iconSize;
  final double? padding;

  const IconButtonComponent({
    super.key,
    required this.icon,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.toolTip,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
    this.padding,
  }) : variant = IconButtonVariant.standard;

  const IconButtonComponent.filled({
    super.key,
    required this.icon,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.toolTip,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
    this.padding,
  }) : variant = IconButtonVariant.filled;

  const IconButtonComponent.tonal({
    super.key,
    required this.icon,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.toolTip,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
    this.padding,
  }) : variant = IconButtonVariant.tonal;

  const IconButtonComponent.outlined({
    super.key,
    required this.icon,
    required this.onPressed,
    this.useInBorderRadius = false,
    this.toolTip,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
    this.padding,
  }) : variant = IconButtonVariant.outlined;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case IconButtonVariant.standard:
        return IconButton(
          icon: Icon(icon, size: iconSize ?? AppConfig.iconSize),
          onPressed: () {
            HapticFeedback.vibrate();
            onPressed();
          },
          color: foregroundColor ?? Theme.of(context).colorScheme.primary,
        );
      case IconButtonVariant.filled:
        return IconButton.filled(
          icon: Icon(icon, size: iconSize ?? AppConfig.iconSize),
          onPressed: () {
            HapticFeedback.vibrate();
            onPressed();
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: useInBorderRadius
                  ? BorderRadius.circular(AppConfig.inBorderRadius)
                  : BorderRadius.circular(AppConfig.outBorderRadius),
            ),
            backgroundColor:
                backgroundColor ?? Theme.of(context).colorScheme.primary,
            foregroundColor:
                foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
          padding: EdgeInsets.all(padding ?? AppConfig.paddingHalf.w),
        );
      case IconButtonVariant.tonal:
        return IconButton.filledTonal(
          icon: Icon(icon, size: iconSize ?? AppConfig.iconSize),
          onPressed: () {
            HapticFeedback.vibrate();
            onPressed();
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: useInBorderRadius
                  ? BorderRadius.circular(AppConfig.inBorderRadius)
                  : BorderRadius.circular(AppConfig.outBorderRadius),
            ),
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
          icon: Icon(icon, size: iconSize ?? AppConfig.iconSize),
          onPressed: () {
            HapticFeedback.vibrate();
            onPressed();
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: useInBorderRadius
                  ? BorderRadius.circular(AppConfig.inBorderRadius)
                  : BorderRadius.circular(AppConfig.outBorderRadius),
            ),
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
