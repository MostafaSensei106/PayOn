import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/widgets/buttons/text_button/text_button_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: AppConfig.padding),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.latest_transactions,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButtonComponent(onPressed: () {}, label: l10n.see_all),
              ],
            ),
          ),
        ),
        SliverList.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  Iconsax.arrow_up_copy,
                  size: AppConfig.iconSize,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              title: Text(l10n.money_transfer),
              subtitle: Text(
                'Today, 12:40 PM',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              trailing: Text(
                '-250.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) =>
              const Divider(height: 1, indent: 70),
        ),
      ],
    );
  }
}
