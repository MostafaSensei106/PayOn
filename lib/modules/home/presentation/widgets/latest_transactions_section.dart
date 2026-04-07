import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/s.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';

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
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
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
