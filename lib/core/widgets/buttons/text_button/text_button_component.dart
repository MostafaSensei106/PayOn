import 'package:flutter/material.dart';

class TextButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;

  const TextButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: color ?? Theme.of(context).colorScheme.primary,
      ),
      child: Text(label),
    );
  }
}
