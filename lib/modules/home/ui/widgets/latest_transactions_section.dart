import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/empty_state/empty_state_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../logic/entity/params/get_transactions_params.dart';
import '../../logic/entity/transaction_entity.dart';
import 'transaction_details_bottom_sheet.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<HomeCubit>().state;

    return state.maybeWhen(
      loading: () => _buildLoading(context),
      success: (wallets, transactions, isTransactionsLoading, currentFilters) {
        return _buildSuccess(context, transactions: transactions);
      },
      orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }

  Widget _buildLoading(BuildContext context) {
    final placeholders = List.generate(
      6,
      (index) => TransactionItemEntity.placeholder(),
    );
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
                  context.localeKeys.latest_transactions,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Skeletonizer.sliver(
            enabled: true,
            child: _buildSectionItems(placeholders),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccess(
    BuildContext context, {
    required List<TransactionItemEntity> transactions,
  }) {
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
                      context.localeKeys.latest_transactions,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                if (transactions.isNotEmpty)
                  TextButtonComponent(
                    onPressed: () => context.showBottomSheetComponent(
                      title: context.localeKeys.latest_transactions,
                      child: CustomScrollView(
                        slivers: [
                          SliverPadding(
                            padding: const EdgeInsets.all(AppConfig.padding),
                            sliver: _buildSectionItems(transactions),
                          ),
                        ],
                      ),
                    ),
                    label: context.localeKeys.see_all,
                  ),
              ],
            ),
          ),
          if (transactions.isEmpty)
            const SliverToBoxAdapter(
              child: EmptyStateComponent(
                title: 'No Transactions',
                subtitle: 'You have no recent transactions.',
                icon: Iconsax.wallet_3_copy,
              ),
            )
          else
            _buildSectionItems(transactions),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
          ),
        ],
      ),
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

        final personName = item.isSender ? item.receiver : item.sender;
        final title = personName.isNotEmpty
            ? personName
            : (item.isInternalTransfer
                  ? 'Money Transfer'
                  : item.transactionType);

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

        Future<void> onTap() async {
          await context.showBottomSheetComponent(
            title: context.localeKeys.transaction_details,
            child: TransactionDetailsBottomSheet(transaction: item),
          );
        }

        if (isSingle) {
          return ListTileIconComponent(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
            onTap: onTap,
          );
        } else if (isFirst) {
          return ListTileIconComponent.top(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
            onTap: onTap,
          );
        } else if (isLast) {
          return ListTileIconComponent.bottom(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
            onTap: onTap,
          );
        } else {
          return ListTileIconComponent.middle(
            title: title,
            leading: leading,
            trailing: trailing,
            subtitle: subtitle,
            onTap: onTap,
          );
        }
      },
    );
  }
}
