import 'package:flutter/material.dart';

class SectionHeaderComponent extends StatelessWidget {
  final String title;
  final VoidCallback? onActionPressed;
  final String? actionLabel;

  const SectionHeaderComponent({
    super.key,
    required this.title,
    this.onActionPressed,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        if (onActionPressed != null)
          TextButton(
            onPressed: onActionPressed,
            child: Text(actionLabel ?? 'View All'),
          ),
      ],
    );
  }
}
