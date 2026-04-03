import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payon/core/constants/app_config.dart';

class CheckboxComponent extends StatelessWidget {
  final String label;
  final bool value;
  final bool useInBorderRadius;
  final void Function(bool?) onChanged;

  const CheckboxComponent({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.useInBorderRadius = false,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(label),
      value: value,
      onChanged: (value) {
        HapticFeedback.vibrate();
        onChanged(value);
      },
      shape: RoundedRectangleBorder(
        borderRadius: useInBorderRadius
            ? BorderRadiusGeometry.circular(AppConfig.inBorderRadius)
            : BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    );
  }
}
