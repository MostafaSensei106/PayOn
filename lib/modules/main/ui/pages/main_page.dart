import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/navigation/bottom_nav_bar/bottom_nav_bar_component.dart';

class MainPage extends HookWidget {
  const MainPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return Scaffold(
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 16.h, left: 45.w, right: 45.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
            child: BottomNavBarComponent(
              currentIndex: navigationShell.currentIndex,
              onTap: (final index) {
                unawaited(HapticFeedback.vibrate());
                navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                );
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
                  activeIcon: const Icon(Iconsax.wallet, size: 24),
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
      ),
    );
  }
}
