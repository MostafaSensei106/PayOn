import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

enum SendMoneyMethod { phone, ipa }

class SendMoneyPage extends HookWidget {
  const SendMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final selectedMethod = useState(SendMoneyMethod.phone);
    final showAccountNumber = useState(false);
    final selectedAccountName = useState(l10n.primary_account);
    final selectedAccountNumber = useState('1234 5678 9012 4589');
    final theme = Theme.of(context);
    final scrollController = useScrollController();
    final title = l10n.send_money;

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SidePageSliverAppBarWithWavesComponent(
            scrollController: scrollController,
            title: title,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  l10n.select_account,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12.h),
                ListTileWidgetComponent(
                  leading: const AvatarComponent(imageUrl: ''),
                  title: selectedAccountName.value,
                  subtitle: showAccountNumber.value
                      ? selectedAccountNumber.value
                      : '•••• •••• •••• ••••',
                  trailing: IconButtonComponent.filled(
                    onPressed: () {
                      unawaited(HapticFeedback.lightImpact());
                      showAccountNumber.value = !showAccountNumber.value;
                    },
                    icon: showAccountNumber.value
                        ? Iconsax.eye_slash_copy
                        : Iconsax.eye_copy,
                  ),
                  onTap: () => context.showBottomSheetComponent(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTileWidgetComponent.top(
                          leading: const AvatarComponent(imageUrl: ''),
                          title: l10n.primary_account,
                          subtitle: '1234 5678 9012 4589',
                          onTap: () {
                            selectedAccountName.value = l10n.primary_account;
                            selectedAccountNumber.value = '1234 5678 9012 4589';
                            Navigator.pop(context);
                          },
                        ),
                        ListTileWidgetComponent.bottom(
                          leading: const AvatarComponent(imageUrl: ''),
                          title: l10n.secondary_account,
                          subtitle: '9876 5432 1098 7654',
                          onTap: () {
                            selectedAccountName.value = l10n.secondary_account;
                            selectedAccountNumber.value = '9876 5432 1098 7654';
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).padding.bottom +
                              AppConfig.padding,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.to,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButtonComponent.icon(
                      icon: Iconsax.heart_search_copy,
                      label: l10n.favorites,
                      onPressed: () => context.showBottomSheetComponent(
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
                            ListTileWidgetComponent.middle(
                              leading: AvatarComponent(imageUrl: ''),
                              title: 'المعلم سردينة',
                              subtitle: '5544 3322 1100 9988',
                            ),
                            ListTileWidgetComponent.middle(
                              leading: AvatarComponent(imageUrl: ''),
                              title: 'المعلم عبد الغفور البرعي',
                              subtitle: '1122 3344 5566 7788',
                            ),
                            ListTileWidgetComponent.bottom(
                              leading: AvatarComponent(imageUrl: ''),
                              title: 'الحج قرمط',
                              subtitle: '0000 1111 2222 3333',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppConfig.outBorderRadius,
                    ),
                  ),
                  child: SegmentedButton<SendMoneyMethod>(
                    showSelectedIcon: false,
                    style: SegmentedButton.styleFrom(
                      selectedBackgroundColor: theme.colorScheme.primary,
                      selectedForegroundColor: theme.colorScheme.onPrimary,
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppConfig.outBorderRadius,
                        ),
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
                    selected: {selectedMethod.value},
                    onSelectionChanged: (Set<SendMoneyMethod> newSelection) {
                      unawaited(HapticFeedback.vibrate());
                      selectedMethod.value = newSelection.first;
                    },
                  ),
                ),
                SizedBox(height: 24.h),
                TextFormFieldComponent(
                  label: selectedMethod.value == SendMoneyMethod.phone
                      ? l10n.phone_number
                      : l10n.ipa,
                  hintText: selectedMethod.value == SendMoneyMethod.phone
                      ? l10n.phone_number_hint
                      : l10n.ipa_hint,
                  prefixIcon: selectedMethod.value == SendMoneyMethod.phone
                      ? Iconsax.call_copy
                      : Icons.alternate_email,

                  keyboardType: selectedMethod.value == SendMoneyMethod.phone
                      ? TextInputType.phone
                      : TextInputType.emailAddress,
                  onChanged: (String p1) {},
                ),
                SizedBox(height: 16.h),
                TextFormFieldComponent(
                  label: l10n.amount,
                  hintText: l10n.amount_hint,
                  prefixIcon: Iconsax.money_send_copy,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  onChanged: (String p1) {},
                ),
                SizedBox(height: 32.h),
                FilledButtonComponent.icon(
                  icon: Iconsax.send_1_copy,
                  label: l10n.send,
                  onPressed: () {
                    unawaited(HapticFeedback.vibrate());
                  },
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
