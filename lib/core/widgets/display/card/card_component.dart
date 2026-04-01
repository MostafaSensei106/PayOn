import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

class CardComponent extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const CardComponent({
    super.key,
    required this.child,
    this.padding,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(AppConfig.padding),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
      child: child,
    );
  }
}
