import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/entity/transaction_entity.dart';

class TransactionDetailsBottomSheet extends StatelessWidget {
  const TransactionDetailsBottomSheet({required this.transaction, super.key});

  final TransactionItemEntity transaction;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    final prefix = transaction.isSender ? '-' : '+';

    // Determine the name to display based on whether user sent or received the money
    final name = transaction.isSender
        ? transaction.receiver
        : transaction.sender;
    final imageUrl = transaction.isSender
        ? transaction.receiverImage
        : transaction.senderImage;

    final displayName = name.isNotEmpty
        ? name
        : (transaction.isInternalTransfer
              ? 'Money Transfer'
              : transaction.transactionType);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppConfig.padding),

          // 1. Avatar
          AvatarComponent(
            imageUrl: imageUrl,
            radius: 40,
            fallbackIcon: Iconsax.wallet_3_copy,
          ),
          const SizedBox(height: AppConfig.padding),

          // 2. Name
          Text(
            displayName,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppConfig.paddingHalf),

          // 3. Amount
          Text(
            '$prefix${transaction.amount} ${transaction.currencyCode}',
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: AppConfig.padding),

          // 4. Status Badge
          _buildStatusBadge(context, transaction.status),
          const SizedBox(height: AppConfig.padding * 2),

          // 5. Grouped Details List
          _buildDetailsList(context, l10n, transaction),

          SizedBox(
            height: MediaQuery.of(context).padding.bottom + AppConfig.padding,
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(BuildContext context, String status) {
    final s = status.toLowerCase();
    Color bgColor;
    Color textColor;

    if (s == 'success' || s == 'completed' || s == 'approved') {
      bgColor = Colors.green.withValues(alpha: 0.15);
      textColor = Colors.green;
    } else if (s == 'failed' || s == 'rejected' || s == 'cancelled') {
      bgColor = Theme.of(context).colorScheme.errorContainer;
      textColor = Theme.of(context).colorScheme.error;
    } else {
      bgColor = Colors.orange.withValues(alpha: 0.15);
      textColor = Colors.orange;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        status,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDetailsList(
    BuildContext context,
    AppLocalizations l10n,
    TransactionItemEntity transaction,
  ) {
    final isSender = transaction.isSender;

    // Contact details of the other party
    final phone = isSender
        ? transaction.receiverPhone
        : transaction.senderPhone;
    final ipa = isSender ? transaction.receiverIpa : transaction.senderIpa;

    final details = [
      if (phone.isNotEmpty)
        (icon: Iconsax.call_copy, label: l10n.phone_number, value: phone),
      if (ipa.isNotEmpty)
        (icon: Iconsax.link_2_copy, label: l10n.ipa, value: ipa),
      (
        icon: Iconsax.calendar_1_copy,
        label: l10n.date,
        value: DateFormat(
          'MMM dd, yyyy - hh:mm a',
        ).format(transaction.createdAt),
      ),
      (
        icon: Iconsax.category_copy,
        label: l10n.transaction_type,
        value: transaction.transactionType,
      ),
      (
        icon: Iconsax.card_copy,
        label: l10n.payment_method,
        value: transaction.paymentMethod,
      ),
      if (transaction.fees > 0)
        (
          icon: Iconsax.money_tick_copy,
          label: l10n.fees,
          value: '${transaction.fees} ${transaction.currencyCode}',
        ),
      if (transaction.totalAmount != transaction.amount)
        (
          icon: Iconsax.wallet_money_copy,
          label: l10n.total_amount,
          value: '${transaction.totalAmount} ${transaction.currencyCode}',
        ),
      if (transaction.adjustedAmount != transaction.totalAmount &&
          transaction.adjustedAmount > 0)
        (
          icon: Iconsax.calculator_copy,
          label: l10n.adjusted_amount,
          value: '${transaction.adjustedAmount} ${transaction.currencyCode}',
        ),
      if (isSender && transaction.senderBalance.isNotEmpty)
        (
          icon: Iconsax.wallet_minus_copy,
          label: l10n.balance_after_transaction,
          value: '${transaction.senderBalance} ${transaction.currencyCode}',
        ),
      (
        icon: Iconsax.receipt_2_1_copy,
        label: l10n.reference_number,
        value: transaction.referenceNumber,
      ),
      if (transaction.description.isNotEmpty)
        (
          icon: Iconsax.document_text_copy,
          label: l10n.description,
          value: transaction.description,
        ),
    ];

    return Column(
      children: List.generate(details.length, (index) {
        final item = details[index];
        final isFirst = index == 0;
        final isLast = index == details.length - 1;

        final trailing = Text(
          item.value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          textAlign: TextAlign.end,
        );

        if (isFirst && isLast) {
          return ListTileIconComponent(
            title: item.label,
            leading: item.icon,
            trailing: Directionality(textDirection: .ltr, child: trailing),
          );
        } else if (isFirst) {
          return ListTileIconComponent.top(
            title: item.label,
            leading: item.icon,
            trailing: Directionality(textDirection: .ltr, child: trailing),
          );
        } else if (isLast) {
          return ListTileIconComponent.bottom(
            title: item.label,
            leading: item.icon,
            trailing: trailing,
          );
        } else {
          return ListTileIconComponent.middle(
            title: item.label,
            leading: item.icon,
            trailing: trailing,
          );
        }
      }),
    );
  }
}
