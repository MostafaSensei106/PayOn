import 'package:flutter/material.dart';

class SliverFillRemainingComponent extends StatelessWidget {
  final Widget child;
  final bool hasScrollBody;
  final bool fillOverscroll;

  const SliverFillRemainingComponent({
    super.key,
    required this.child,
    this.hasScrollBody = true,
    this.fillOverscroll = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: hasScrollBody,
      fillOverscroll: fillOverscroll,
      child: child,
    );
  }
}
