import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/settings_tile_data.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/inputs/search_bar/search_bar_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_component.dart';

class SendMoney extends HookWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final shearchController = useTextEditingController();
    final scrollController = useScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SidePageSliverAppBarComponent(
            title: Text(l10n.send_money),
            pinned: true,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight + 16),
              child: Padding(
                padding: const EdgeInsetsGeometry.all(AppConfig.paddingHalf),
                child: SearchBarComponent(
                  controller: shearchController,
                  hintText: l10n.shearch_here,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppConfig.paddingHalf,
              children: [
                Padding(
                  padding: const EdgeInsetsGeometry.all(AppConfig.paddingHalf),
                  child: Text(
                    l10n.favouraits,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: AppConfig.paddingHalf),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            child: Icon(Iconsax.user_copy),
                          ),
                          const SizedBox(height: AppConfig.paddingHalf),
                          Text(
                            'User ${index + 1}',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          const LatestTransactionsSection(),
        ],
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppConfig.paddingQuarter,
        children: [
          FloatingActionButton(
            heroTag: 'edit_btn',
            onPressed: () {
              unawaited(HapticFeedback.vibrate());
            },
            child: const Icon(Iconsax.call_copy),
          ),
          FloatingActionButton.extended(
            heroTag: 'person_btn',
            onPressed: () {
              unawaited(HapticFeedback.vibrate());
            },
            icon: const Icon(Iconsax.personalcard_copy),
            label: Text(l10n.iPA),
          ),
        ],
      ),
    );
  }
}

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return SliverPadding(
      padding: const EdgeInsetsGeometry.symmetric(
        horizontal: AppConfig.padding,
      ),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.latest_transactions,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButtonComponent(onPressed: () {}, label: l10n.see_all),
              ],
            ),
          ),
          _buildSectionItems(
            List.generate(
              10,
              (index) => SettingsTileData(
                title: l10n.money_transfer,
                subtitle: 'Today, 12:40 PM',
                leading: Iconsax.arrow_up_copy,
                trailing: Text(
                  '-250.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionItems(List<SettingsTileData> items) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final isFirst = index == 0;
        final isLast = index == items.length - 1;
        final isSingle = items.length == 1;

        if (isSingle) {
          return ListTileIconComponent(
            title: item.title,
            leading: item.leading,
            trailing: item.trailing,
            subtitle: item.subtitle,
            onTap: item.onTap,
          );
        } else if (isFirst) {
          return ListTileIconComponent.top(
            title: item.title,
            leading: item.leading,
            trailing: item.trailing,
            subtitle: item.subtitle,
            onTap: item.onTap,
          );
        } else if (isLast) {
          return ListTileIconComponent.bottom(
            title: item.title,
            leading: item.leading,
            trailing: item.trailing,
            subtitle: item.subtitle,
            onTap: item.onTap,
          );
        } else {
          return ListTileIconComponent.middle(
            title: item.title,
            leading: item.leading,
            trailing: item.trailing,
            subtitle: item.subtitle,
            onTap: item.onTap,
          );
        }
      },
    );
  }
}
