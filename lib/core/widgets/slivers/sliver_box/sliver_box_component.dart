import 'package:flutter/material.dart';

class SliverBoxComponent extends StatelessWidget {
  final Widget child;

  const SliverBoxComponent({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: child,
    );
  }
}
