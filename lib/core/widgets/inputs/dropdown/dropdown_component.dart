import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

class DropdownComponent<T> extends StatelessWidget {
  final String label;
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;
  final void Function(T?) onChanged;

  const DropdownComponent({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      initialValue: initialValue,
      items: items,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
        ),
      ),
    );
  }
}
