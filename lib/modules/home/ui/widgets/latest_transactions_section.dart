import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../logic/entity/transaction_entity.dart';
import 'package:intl/intl.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (wallets, transactions, isTransactionsLoading) {
            final displayTransactions = isTransactionsLoading
                ? List.generate(
                    5,
                    (index) => TransactionItemEntity(
                      id: index,
                      createdAt: DateTime.now(),
                      senderId: '',
                      sender: 'Sender Name',
                      senderPhone: '',
                      senderIpa: '',
                      senderImage: '',
                      receiverId: '',
                      receiver: 'Receiver Name',
                      receiverPhone: '',
                      receiverIpa: '',
                      receiverImage: '',
                      transactionType: 'Transfer',
                      currencyCode: 'EGP',
                      amount: 0,
                      totalAmount: 0,
                      adjustedAmount: 0,
                      fees: 0,
                      paymentMethod: '',
                      status: 'Success',
                      description: 'Transaction Description',
                      referenceNumber: '',
                      isSender: true,
                      isInternalTransfer: true,
                      isMultiCurrency: false,
                      isTransactionByPhone: false,
                      senderBalance: '0',
                    ),
                  )
                : transactions;

            if (!isTransactionsLoading && displayTransactions.isEmpty) {
              return const SliverToBoxAdapter(child: SizedBox.shrink());
            }

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
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (!isTransactionsLoading && transactions.isNotEmpty)
                          TextButtonComponent(
                            onPressed: () => context.showBottomSheetComponent(
                              title: l10n.latest_transactions,
                              child: CustomScrollView(
                                slivers: [
                                  _buildSectionItems(transactions),
                                ],
                              ),
                            ),
                            label: l10n.see_all,
                          ),
                      ],
                    ),
                  ),
                  Skeletonizer(
                    enabled: isTransactionsLoading,
                    child: _buildSectionItems(displayTransactions),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
                  ),
                ],
              ),
            );
          },
          orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
        );
      },
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

        final title = item.isInternalTransfer ? 'Money Transfer' : item.transactionType;
        final subtitle = DateFormat('MMM dd, yyyy - hh:mm a').format(item.createdAt);
        final leading = item.isSender ? Iconsax.arrow_up_copy : Iconsax.arrow_down_copy;
        final color = item.isSender ? Theme.of(context).colorScheme.error : Colors.green;
        final prefix = item.isSender ? '-' : '+';

        final trailing = Text(
          '$prefix${item.amount} ${item.currencyCode}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
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
