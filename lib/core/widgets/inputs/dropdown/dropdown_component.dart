import 'package:flutter/material.dart';
import '../../../constants/app_config.dart';

class DropdownComponent<T> extends StatelessWidget {

  const DropdownComponent({
    required this.label, required this.items, required this.onChanged, super.key,
    this.initialValue,
  });
  final String label;
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;
  final void Function(T?) onChanged;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField<T>(
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
