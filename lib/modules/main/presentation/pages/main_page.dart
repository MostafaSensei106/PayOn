import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/widgets/navigation/bottom_nav_bar/bottom_nav_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';
import 'package:payon/modules/home/presentation/pages/home_page.dart';
import 'package:payon/modules/wallet/presentation/pages/wallet_page.dart';
import 'package:payon/modules/history/presentation/pages/history_page.dart';
import 'package:payon/modules/settings/presentation/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const WalletPage(),
    const HistoryPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),

      bottomNavigationBar: BottomNavBarComponent(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.home_2_copy),
            activeIcon: const Icon(Iconsax.home_2),
            label: l10n.home,
            tooltip: l10n.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.wallet_copy),
            activeIcon: const Icon(Iconsax.wallet),
            label: l10n.wallet,
            tooltip: l10n.wallet,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.receipt_item_copy),
            activeIcon: const Icon(Iconsax.receipt_item),
            label: l10n.history,
            tooltip: l10n.history,
          ),

          BottomNavigationBarItem(
            icon: const Icon(Iconsax.setting_copy),
            activeIcon: const Icon(Iconsax.setting),
            label: l10n.settings,
            tooltip: l10n.settings,
          ),
        ],
      ),
    );
  }
}
