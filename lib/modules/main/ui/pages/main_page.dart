import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/bottom_nav_bar/bottom_nav_bar_component.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';

class MainPage extends HookWidget {
  const MainPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(final BuildContext context) {
    final l10n = context.localeKeys;

    final isVisible = useState(true);

    useEffect(() {
      // ignore: discarded_futures
      Future.wait([
        context.read<HomeCubit>().getWallets(),
        context.read<UserProfileCubit>().getProfile(),
      ]);
      return null;
    }, const []);

    return Scaffold(
      extendBody: true,
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            if (!isVisible.value) isVisible.value = true;
          } else if (notification.direction == ScrollDirection.reverse) {
            if (isVisible.value) isVisible.value = false;
          }
          return false;
        },
        child: navigationShell,
      ),
      bottomNavigationBar: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        offset: isVisible.value ? Offset.zero : const Offset(0, 2),
        child: SafeArea(
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
                    icon: const Icon(Iconsax.scan_barcode_copy),
                    activeIcon: const Icon(Iconsax.scan_barcode, size: 24),
                    label: l10n.scan_qr_code,
                    tooltip: l10n.scan_qr_code,
                  ),
                  // BottomNavigationBarItem(
                  //   icon: const Icon(Iconsax.receipt_item_copy),
                  //   activeIcon: const Icon(Iconsax.receipt_item),
                  //   label: l10n.history,
                  //   tooltip: l10n.history,
                  // ),
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
      ),
    );
  }
}
