import 'package:flutter/material.dart';

class BadgeComponent extends StatelessWidget {
  final Widget child;
  final String label;

  const BadgeComponent({super.key, required this.child, required this.label});

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text(label),
      backgroundColor: Theme.of(context).colorScheme.error,
      child: child,
    );
  }
}
