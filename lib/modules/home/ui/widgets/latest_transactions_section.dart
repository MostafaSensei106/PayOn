import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/empty_state/empty_state_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../logic/entity/transaction_entity.dart';
import 'transactions_filter_bottom_sheet.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final state = context.watch<HomeCubit>().state;

    return state.maybeWhen(
      success: (wallets, transactions, isTransactionsLoading, currentFilters) {
        final displayTransactions = isTransactionsLoading
            ? List.generate(5, (index) => TransactionItemEntity.placeholder())
            : transactions;

        final hasFilters =
            currentFilters.minAmount > 0 || currentFilters.maxAmount > 0;

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
                    Row(
                      children: [
                        Text(
                          l10n.latest_transactions,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    IconButtonComponent.filled(
                      icon: Iconsax.setting_4_copy,
                      foregroundColor: hasFilters
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                      iconSize: 20,
                      onPressed: () {
                        unawaited(
                          context.showBottomSheetComponent(
                            title: l10n.latest_transactions,
                            child: BlocProvider.value(
                              value: context.read<HomeCubit>(),
                              child: TransactionsFilterBottomSheet(
                                initialFilters: currentFilters,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    if (!isTransactionsLoading && transactions.isNotEmpty)
                      TextButtonComponent(
                        onPressed: () => context.showBottomSheetComponent(
                          title: l10n.latest_transactions,
                          child: CustomScrollView(
                            slivers: [_buildSectionItems(transactions)],
                          ),
                        ),
                        label: l10n.see_all,
                      ),
                  ],
                ),
              ),
              if (!isTransactionsLoading && displayTransactions.isEmpty)
                const SliverToBoxAdapter(
                  child: EmptyStateComponent(
                    title: 'No Transactions',
                    subtitle: 'You have no recent transactions.',
                    icon: Iconsax.wallet_3_copy,
                  ),
                )
              else
                Skeletonizer.sliver(
                  enabled: isTransactionsLoading,
                  child: _buildSectionItems(displayTransactions),
                ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 8,
                ),
              ),
            ],
          ),
        );
      },
      orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }

  Widget _buildSectionItems(List<TransactionItemEntity> items) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final isFirst = index == 0;
        final isLast = index == items.length - 1;
        final isSingle = items.length == 1;

        final title = item.isInternalTransfer
            ? 'Money Transfer'
            : item.transactionType;
        final subtitle = DateFormat(
          'MMM dd, yyyy - hh:mm a',
        ).format(item.createdAt);
        final leading = item.isSender
            ? Iconsax.arrow_up_copy
            : Iconsax.arrow_down_copy;
        final color = item.isSender
            ? Theme.of(context).colorScheme.error
            : Colors.green;
        final prefix = item.isSender ? '-' : '+';

        final trailing = Text(
          '$prefix${item.amount} ${item.currencyCode}',
          style: TextStyle(fontWeight: FontWeight.bold, color: color),
        );

        if (isSingle) {
          return ListTileIconComponent(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
          );
        } else if (isFirst) {
          return ListTileIconComponent.top(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
          );
        } else if (isLast) {
          return ListTileIconComponent.bottom(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
          );
        } else {
          return ListTileIconComponent.middle(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
          );
        }
      },
    );
  }
}
