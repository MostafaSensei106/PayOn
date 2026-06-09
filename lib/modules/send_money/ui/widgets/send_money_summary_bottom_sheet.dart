import 'package:flutter/material.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/otp_field/otp_field_component.dart';
import '../../logic/entity/create_tracnsaction_draft_entity.dart';

class SendMoneySummaryBottomSheet extends StatefulWidget {
  const SendMoneySummaryBottomSheet({
    required this.draft,
    required this.onConfirm,
    super.key,
  });

  final CreateTracnsactionDraftEntity draft;
  final void Function(String pin) onConfirm;

  @override
  State<SendMoneySummaryBottomSheet> createState() =>
      _SendMoneySummaryBottomSheetState();
}

class _SendMoneySummaryBottomSheetState
    extends State<SendMoneySummaryBottomSheet> {
  String _pin = '';

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + AppConfig.padding,
        left: AppConfig.padding,
        right: AppConfig.padding,
        top: AppConfig.padding,
      ),
      child: Column(
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
            value:
                '${widget.draft.originalAmount} ${widget.draft.originalCurrency}',
          ),
          _SummaryRow(
            label: l10n.fees,
            value: '${widget.draft.fess} ${widget.draft.originalCurrency}',
          ),
          const Divider(),
          _SummaryRow(
            label: l10n.total_amount,
            value:
                '${widget.draft.totalAmount} ${widget.draft.originalCurrency}',
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
            length: 5,
            onChanged: (pin) {
              setState(() {
                _pin = pin;
              });
            },
            onCompleted: (pin) {
              setState(() {
                _pin = pin;
              });
            },
          ),
          const SizedBox(height: AppConfig.padding * 2),
          FilledButtonComponent(
            onPressed: _pin.length == 5 ? () => widget.onConfirm(_pin) : () {},
            label: l10n.confirm,
          ),
        ],
      ),
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
