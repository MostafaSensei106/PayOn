import 'package:flutter/material.dart';

class CheckboxComponent extends StatelessWidget {
  final String label;
  final bool value;
  final void Function(bool?) onChanged;

  const CheckboxComponent({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(label),
      value: value,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
