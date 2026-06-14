import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../l10n/app_localizations.dart';

class AmountInputAndSubmitComponent extends StatelessWidget {
  const AmountInputAndSubmitComponent({
    required this.onAmountChanged,
    required this.onDescriptionChanged,
    required this.onSubmit,
    required this.l10n,
    super.key,
  });

  final ValueChanged<String> onAmountChanged;
  final ValueChanged<String> onDescriptionChanged;
  final VoidCallback onSubmit;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldComponent(
          label: l10n.amount,
          hintText: l10n.amount_hint,
          prefixIcon: Iconsax.money_send_copy,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          onChanged: onAmountChanged,
        ),
        SizedBox(height: 16.h),
        TextFormFieldComponent(
          label: l10n.description,
          hintText: l10n.description_hint,
          prefixIcon: Iconsax.document_text_copy,
          onChanged: onDescriptionChanged,
        ),
        SizedBox(height: 32.h),
        FilledButtonComponent.icon(
          icon: Iconsax.send_1_copy,
          label: l10n.send,
          onPressed: () {
            unawaited(HapticFeedback.vibrate());
            onSubmit();
          },
        ),
      ],
    );
  }
}
