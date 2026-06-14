import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/logic/entitys/wallets_entity.dart';

class SenderAccountSelectionComponent extends StatelessWidget {
  const SenderAccountSelectionComponent({
    required this.selectedWallet,
    required this.wallets,
    required this.onWalletSelected,
    required this.l10n,
    super.key,
  });

  final WalletItemEntity selectedWallet;
  final List<WalletItemEntity> wallets;
  final ValueChanged<WalletItemEntity> onWalletSelected;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final showAccountNumber = ValueNotifier<bool>(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.select_account,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 12.h),
        ValueListenableBuilder<bool>(
          valueListenable: showAccountNumber,
          builder: (context, show, child) {
            return ListTileWidgetComponent(
              leading: const AvatarComponent(imageUrl: ''),
              title: selectedWallet.ipa,
              subtitle: show ? selectedWallet.walletId : '•••• •••• •••• ••••',
              trailing: IconButtonComponent.filled(
                onPressed: () {
                  unawaited(HapticFeedback.lightImpact());
                  showAccountNumber.value = !showAccountNumber.value;
                },
                icon: show ? Iconsax.eye_slash_copy : Iconsax.eye_copy,
              ),
              onTap: () => _showWalletsBottomSheet(context),
            );
          },
        ),
      ],
    );
  }

  void _showWalletsBottomSheet(BuildContext context) {
    unawaited(
      context.showBottomSheetComponent(
        title: l10n.select_account,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...wallets.asMap().entries.map((entry) {
                final index = entry.key;
                final wallet = entry.value;
                final isFirst = index == 0;
                final isLast = index == wallets.length - 1;

                if (wallets.length == 1) {
                  return ListTileWidgetComponent(
                    leading: const AvatarComponent(imageUrl: ''),
                    title: wallet.ipa,
                    subtitle: wallet.walletId,
                    onTap: () {
                      onWalletSelected(wallet);
                      Navigator.pop(context);
                    },
                  );
                }

                if (isFirst) {
                  return ListTileWidgetComponent.top(
                    leading: const AvatarComponent(imageUrl: ''),
                    title: wallet.ipa,
                    subtitle: wallet.walletId,
                    onTap: () {
                      onWalletSelected(wallet);
                      Navigator.pop(context);
                    },
                  );
                } else if (isLast) {
                  return ListTileWidgetComponent.bottom(
                    leading: const AvatarComponent(imageUrl: ''),
                    title: wallet.ipa,
                    subtitle: wallet.walletId,
                    onTap: () {
                      onWalletSelected(wallet);
                      Navigator.pop(context);
                    },
                  );
                } else {
                  return ListTileWidgetComponent.middle(
                    leading: const AvatarComponent(imageUrl: ''),
                    title: wallet.ipa,
                    subtitle: wallet.walletId,
                    onTap: () {
                      onWalletSelected(wallet);
                      Navigator.pop(context);
                    },
                  );
                }
              }),
              SizedBox(
                height:
                    MediaQuery.of(context).padding.bottom + AppConfig.padding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
