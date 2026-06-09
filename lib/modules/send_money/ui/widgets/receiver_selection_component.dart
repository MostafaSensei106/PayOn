import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../page/send_money_page.dart';

class ReceiverSelectionComponent extends StatelessWidget {
  const ReceiverSelectionComponent({
    required this.selectedMethod,
    required this.onMethodChanged,
    required this.onReceiverChanged,
    required this.l10n,
    super.key,
  });

  final SendMoneyMethod selectedMethod;
  final ValueChanged<SendMoneyMethod> onMethodChanged;
  final ValueChanged<String> onReceiverChanged;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.to,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButtonComponent.icon(
              icon: Iconsax.heart_search_copy,
              label: l10n.favorites,
              onPressed: () => _showFavoritesBottomSheet(context),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Center(
          child: SegmentedButton<SendMoneyMethod>(
            showSelectedIcon: false,
            style: SegmentedButton.styleFrom(
              selectedBackgroundColor: theme.colorScheme.primary,
              selectedForegroundColor: theme.colorScheme.onPrimary,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
              ),
            ),
            segments: [
              ButtonSegment(
                icon: const Icon(Iconsax.call_copy),
                label: Text(l10n.phone_number),
                value: SendMoneyMethod.phone,
              ),
              ButtonSegment(
                icon: const Icon(Icons.alternate_email),
                label: Text(l10n.ipa_address),
                value: SendMoneyMethod.ipa,
              ),
            ],
            selected: {selectedMethod},
            onSelectionChanged: (newSelection) {
              unawaited(HapticFeedback.vibrate());
              onMethodChanged(newSelection.first);
            },
          ),
        ),
        SizedBox(height: 24.h),
        TextFormFieldComponent(
          label: selectedMethod == SendMoneyMethod.phone
              ? l10n.phone_number
              : l10n.ipa,
          hintText: selectedMethod == SendMoneyMethod.phone
              ? l10n.phone_number_hint
              : l10n.ipa_hint,
          prefixIcon: selectedMethod == SendMoneyMethod.phone
              ? Iconsax.call_copy
              : Icons.alternate_email,
          keyboardType: selectedMethod == SendMoneyMethod.phone
              ? TextInputType.phone
              : TextInputType.emailAddress,
          onChanged: onReceiverChanged,
        ),
      ],
    );
  }

  void _showFavoritesBottomSheet(BuildContext context) {
    unawaited(
      context.showBottomSheetComponent(
        title: l10n.favorites,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTileWidgetComponent.top(
              leading: AvatarComponent(imageUrl: ''),
              title: 'المعلم حلاوة العنتبلي',
              subtitle: '1234 5678 9012 4589',
            ),
            ListTileWidgetComponent.middle(
              leading: AvatarComponent(imageUrl: ''),
              title: 'الحج كمال ابو رية',
              subtitle: '9876 5432 1098 7654',
            ),
            ListTileWidgetComponent.bottom(
              leading: AvatarComponent(imageUrl: ''),
              title: 'المعلم سردينة',
              subtitle: '5544 3322 1100 9988',
            ),
          ],
        ),
      ),
    );
  }
}
