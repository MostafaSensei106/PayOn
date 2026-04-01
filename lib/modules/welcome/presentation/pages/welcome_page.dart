import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_constants.dart';
import 'package:payon/core/router/app_router.dart';
import 'package:payon/core/widgets/navigation/app_bar_component.dart';
import 'package:payon/core/widgets/buttons/filled_button_component.dart';
import 'package:payon/core/widgets/buttons/outlined_button_component.dart';
import 'package:payon/core/widgets/display/card_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBarComponent(title: l10n.welcome_title, showBackButton: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
        child: Column(
          children: [
            SizedBox(height: AppConstants.defaultSpacing.h),
            _buildWelcomeCard(Iconsax.flash_1_copy, l10n.send_money_title, l10n.send_money_subtitle),
            SizedBox(height: AppConstants.defaultSpacing.h),
            _buildWelcomeCard(Iconsax.shield_tick_copy, l10n.secure_payments_title, l10n.secure_payments_subtitle),
            SizedBox(height: AppConstants.defaultSpacing.h),
            _buildWelcomeCard(Iconsax.status_up_copy, l10n.track_everything_title, l10n.track_everything_subtitle),
            const Spacer(),
            FilledButtonComponent(
              label: l10n.get_started,
              icon: Iconsax.arrow_right_1,
              onPressed: () => context.push(AppRouter.getStarted),
            ),
            SizedBox(height: AppConstants.defaultSpacing.h),
            OutlinedButtonComponent(
              label: l10n.login,
              icon: Iconsax.arrow_right_1,
              onPressed: () => context.push(AppRouter.login),
            ),
            SizedBox(height: AppConstants.defaultSpacing.h),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard(IconData icon, String title, String subtitle) {
    return CardComponent(
      padding: EdgeInsets.zero,
      child: ListTile(
        leading: Icon(icon, size: AppConstants.iconSize),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
