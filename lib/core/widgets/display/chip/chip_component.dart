import 'package:flutter/material.dart';

class ChipComponent extends StatelessWidget {
  final String label;
  final VoidCallback? onDeleted;

  const ChipComponent({
    super.key,
    required this.label,
    this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      onDeleted: onDeleted,
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer),
    );
  }
}
