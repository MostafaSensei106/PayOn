import 'package:flutter/material.dart';

class SwitchComponent extends StatelessWidget {
  final String label;
  final bool value;
  final void Function(bool) onChanged;

  const SwitchComponent({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(label),
      value: value,
      onChanged: onChanged,
      activeTrackColor: Theme.of(context).colorScheme.primary,
    );
  }
}
