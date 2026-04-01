import 'package:flutter/material.dart';

class SliverPersistentHeaderComponent extends StatelessWidget {
  final Widget child;
  final double minExtent;
  final double maxExtent;
  final bool pinned;
  final bool floating;

  const SliverPersistentHeaderComponent({
    super.key,
    required this.child,
    required this.minExtent,
    required this.maxExtent,
    this.pinned = false,
    this.floating = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: pinned,
      floating: floating,
      delegate: _SliverPersistentHeaderDelegate(
        minExtent: minExtent,
        maxExtent: maxExtent,
        child: child,
      ),
    );
  }
}

class _SliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  @override
  final double minExtent;
  @override
  final double maxExtent;

  _SliverPersistentHeaderDelegate({
    required this.child,
    required this.minExtent,
    required this.maxExtent,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverPersistentHeaderDelegate oldDelegate) {
    return child != oldDelegate.child ||
        minExtent != oldDelegate.minExtent ||
        maxExtent != oldDelegate.maxExtent;
  }
}
