import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/navigation/bottom_nav_bar/bottom_nav_bar_component.dart';
import '../../../history/presentation/pages/history_page.dart';
import '../../../home/ui/pages/home_page.dart';
import '../../../settings/ui/pages/settings_page.dart';
import '../../../wallet/presentation/pages/wallet_page.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  static const List<Widget> _pages = [
    HomePage(),
    WalletPage(),
    HistoryPage(),
    SettingsPage(),
  ];

  @override
  Widget build(final BuildContext context) {
    final currentIndex = useState(0);
    final l10n = getIt<L10nService>().get(context);

    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: currentIndex.value, children: _pages),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          child: BottomNavBarComponent(
            currentIndex: currentIndex.value,
            onTap: (final index) {
              unawaited(HapticFeedback.vibrate());
              currentIndex.value = index;
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
        ),
      ),
    );
  }
}
