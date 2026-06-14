import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/cubit/user_favorites_cubit.dart';
import '../../logic/cubit/user_favorites_state.dart';
import '../page/send_money_page.dart';

class ReceiverSelectionComponent extends StatelessWidget {
  const ReceiverSelectionComponent({
    required this.selectedMethod,
    required this.onMethodChanged,
    required this.onReceiverChanged,
    required this.l10n,
    this.initialValue,
    super.key,
  });

  final SendMoneyMethod selectedMethod;
  final ValueChanged<SendMoneyMethod> onMethodChanged;
  final ValueChanged<String> onReceiverChanged;
  final AppLocalizations l10n;
  final String? initialValue;

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
          initialValue: initialValue,
          onChanged: onReceiverChanged,
        ),
      ],
    );
  }

  void _showFavoritesBottomSheet(BuildContext context) {
    final cubit = context.read<UserFavoritesCubit>();
    unawaited(
      context.showBottomSheetComponent(
        title: l10n.favorites,
        child: BlocProvider.value(
          value: cubit,
          child: BlocBuilder<UserFavoritesCubit, UserFavoritesState>(
            builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(AppConfig.padding),
                  child: CircularProgressIndicator(),
                ),
              ),
              success: (favorites) {
                if (favorites.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(AppConfig.padding),
                      child: Text('No Favorites'),
                    ),
                  );
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...favorites.asMap().entries.map((entry) {
                      final index = entry.key;
                      final favorite = entry.value;
                      final isFirst = index == 0;
                      final isLast = index == favorites.length - 1;

                      if (favorites.length == 1) {
                        return ListTileWidgetComponent(
                          leading: AvatarComponent(imageUrl: favorite.image),
                          title: favorite.name,
                          subtitle: favorite.id,
                          onTap: () {
                            onReceiverChanged(favorite.id);
                            Navigator.pop(context);
                          },
                        );
                      }

                      if (isFirst) {
                        return ListTileWidgetComponent.top(
                          leading: AvatarComponent(imageUrl: favorite.image),
                          title: favorite.name,
                          subtitle: favorite.id,
                          onTap: () {
                            onReceiverChanged(favorite.id);
                            Navigator.pop(context);
                          },
                        );
                      } else if (isLast) {
                        return ListTileWidgetComponent.bottom(
                          leading: AvatarComponent(imageUrl: favorite.image),
                          title: favorite.name,
                          subtitle: favorite.id,
                          onTap: () {
                            onReceiverChanged(favorite.id);
                            Navigator.pop(context);
                          },
                        );
                      } else {
                        return ListTileWidgetComponent.middle(
                          leading: AvatarComponent(imageUrl: favorite.image),
                          title: favorite.name,
                          subtitle: favorite.id,
                          onTap: () {
                            onReceiverChanged(favorite.id);
                            Navigator.pop(context);
                          },
                        );
                      }
                    }),
                    SizedBox(
                      height:
                          MediaQuery.of(context).padding.bottom +
                          AppConfig.padding,
                    ),
                  ],
                );
              },
              failure: (message) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppConfig.padding),
                  child: Text(message),
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
        ),
      ),
    );
  }
}
