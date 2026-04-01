import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? color;
  final double? size;

  const IconButtonComponent({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, size: size, color: color ?? Theme.of(context).colorScheme.onSurface),
      onPressed: onPressed,
    );
  }
}
