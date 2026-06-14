import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/otp_field/otp_field_component.dart';
import '../../logic/entity/create_tracnsaction_draft_entity.dart';

class SendMoneySummaryBottomSheet extends HookWidget {
  const SendMoneySummaryBottomSheet({
    required this.draft,
    required this.onConfirm,
    super.key,
  });

  final CreateTracnsactionDraftEntity draft;
  final void Function(String pin) onConfirm;

  @override
  Widget build(BuildContext context) {
    final pinState = useState('');
    final l10n = context.localeKeys;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.confirm_transaction,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppConfig.padding),
        _SummaryRow(
          label: l10n.amount,
          value: '${draft.originalAmount} ${draft.originalCurrency}',
        ),
        _SummaryRow(
          label: l10n.fees,
          value: '${draft.fess} ${draft.originalCurrency}',
        ),
        const Divider(),
        _SummaryRow(
          label: l10n.total_amount,
          value: '${draft.totalAmount} ${draft.originalCurrency}',
          isTotal: true,
        ),
        const SizedBox(height: AppConfig.padding * 2),
        Text(
          l10n.enter_pin,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppConfig.padding),
        OtpFieldComponent(
          onChanged: (pin) => pinState.value = pin,
          onCompleted: (pin) => pinState.value = pin,
        ),
        const SizedBox(height: AppConfig.padding * 2),
        FilledButtonComponent(
          onPressed: pinState.value.length == 6
              ? () => onConfirm(pinState.value)
              : () {},
          label: l10n.confirm,
        ),
      ],
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  final String label;
  final String value;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: isTotal
                ? Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
                : Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            value,
            style: isTotal
                ? Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
                : Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
