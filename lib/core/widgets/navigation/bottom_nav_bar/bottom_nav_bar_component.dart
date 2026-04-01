import 'package:flutter/material.dart';

class BottomNavBarComponent extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final void Function(int) onTap;

  const BottomNavBarComponent({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      backgroundColor: Theme.of(context).colorScheme.surface,
      destinations: items
          .map(
            (item) => NavigationDestination(
              icon: item.icon,
              selectedIcon: item.activeIcon,
              label: item.label ?? '',
            ),
          )
          .toList(),
    );
  }
}
