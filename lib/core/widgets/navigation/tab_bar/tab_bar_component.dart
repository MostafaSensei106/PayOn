import 'package:flutter/material.dart';

class TabBarComponent extends StatelessWidget {
  final List<Tab> tabs;
  final TabController? controller;

  const TabBarComponent({super.key, required this.tabs, this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: tabs,
      labelColor: Theme.of(context).colorScheme.primary,
      unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
      indicatorColor: Theme.of(context).colorScheme.primary,
    );
  }
}
