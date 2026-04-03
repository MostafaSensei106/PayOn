import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payon/core/constants/app_config.dart';

class TextFieldComponent extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool useInBorderRadius;
  final bool readOnly;
  final void Function()? onTap;

  const TextFieldComponent({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.useInBorderRadius = false,
    this.readOnly = false,
    this.onTap,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      onTap: () {
        HapticFeedback.vibrate();
        onTap?.call();
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefixIcon,
          color: Theme.of(context).colorScheme.primary,
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: useInBorderRadius
              ? BorderRadius.circular(AppConfig.inBorderRadius)
              : BorderRadius.circular(AppConfig.outBorderRadius),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: useInBorderRadius
              ? BorderRadius.circular(AppConfig.inBorderRadius)
              : BorderRadius.circular(AppConfig.outBorderRadius),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
      ),
    );
  }
}
