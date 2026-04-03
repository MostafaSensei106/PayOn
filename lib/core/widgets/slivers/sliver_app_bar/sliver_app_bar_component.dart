import 'package:flutter/material.dart';

class SliverAppBarComponent extends StatelessWidget {

  const SliverAppBarComponent({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.pinned = false,
    this.floating = false,
    this.snap = false,
    this.expandedHeight,
    this.flexibleSpace,
    this.bottom,
    this.centerTitle = true,
  });
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double? expandedHeight;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) => SliverAppBar(
      title: title,
      leading: leading,
      actions: actions,
      pinned: pinned,
      floating: floating,
      snap: snap,
      expandedHeight: expandedHeight,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      backgroundColor: Theme.of(context).colorScheme.surface,
      centerTitle: centerTitle,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
}
