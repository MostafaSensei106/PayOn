import 'package:flutter/material.dart';
import 'package:payon/core/widgets/display/card/card_component.dart';

class SliverCardComponent extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const SliverCardComponent({
    super.key,
    required this.child,
    this.padding,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CardComponent(
        padding: padding,
        color: color,
        child: child,
      ),
    );
  }
}
