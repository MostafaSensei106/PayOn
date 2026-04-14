import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../constants/app_config.dart';

class TextFormFieldComponent extends StatelessWidget {
  const TextFormFieldComponent({
    required this.label,
    required this.prefixIcon,
    required this.onChanged,
    super.key,
    this.suffixIcon,
    this.obscureText = false,
    this.useInBorderRadius = false,
    this.readOnly = false,
    this.isEnable = true,
    this.errorText,
    this.onTap,
    this.controller,
    this.keyboardType,
    this.initialValue,
  });
  final String label;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool useInBorderRadius;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String) onChanged;
  final bool isEnable;
  final String? errorText;
  final String? initialValue;

  @override
  Widget build(final BuildContext context) => TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: obscureText,
    readOnly: readOnly,
    onChanged: (val) => onChanged.call(val),
    enabled: isEnable,
    initialValue: initialValue,

    onTap: () {
      unawaited(HapticFeedback.vibrate());
      onTap?.call();
    },
    decoration: InputDecoration(
      labelText: label,
      errorText: errorText,
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
