import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payon/core/constants/app_constants.dart';

class TextButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const TextButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  }) : icon = null;

  const TextButtonComponent.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.inBorderRadius),
      ),
    );

    return icon == null
        ? TextButton(onPressed: onPressed, style: style, child: Text(label))
        : TextButton.icon(
            onPressed: onPressed,
            style: style,
            icon: Icon(icon, size: AppConstants.iconSizeSmall.w),
            label: Text(label),
          );
  }
}
