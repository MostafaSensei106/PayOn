import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ShimmerComponent extends StatelessWidget {

  const ShimmerComponent({required this.child, super.key, this.enabled = true});
  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Skeletonizer(enabled: enabled, child: child);
}
