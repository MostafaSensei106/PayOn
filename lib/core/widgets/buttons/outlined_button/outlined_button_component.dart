import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payon/core/constants/app_constants.dart';

class OutlinedButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? width;
  final double? height;
  final Color? backgroundColor; // Used for border color in OutlinedButton
  final Color? foregroundColor;

  const OutlinedButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  }) : icon = null;

  const OutlinedButtonComponent.icon({
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
        ? OutlinedButton(
            onPressed: onPressed,
            style: _getButtonStyle(context),
            child: Text(label),
          )
        : OutlinedButton.icon(
            onPressed: onPressed,
            style: _getButtonStyle(context),
            icon: Icon(icon, size: AppConstants.iconSizeSmall.w),
            label: Text(label),
          );
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    return OutlinedButton.styleFrom(
      side: BorderSide(
        color: backgroundColor ?? Theme.of(context).colorScheme.outline,
      ),
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.primary,
      minimumSize: Size(
        width ?? double.infinity,
        height ?? AppConstants.buttonHeight.h,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.inBorderRadius),
      ),
    );
  }
}
