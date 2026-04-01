import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_constants.dart';
import 'package:payon/core/router/app_router.dart';
import 'package:payon/core/widgets/buttons/filled_button/filled_button_component.dart';
import 'package:payon/core/widgets/buttons/outlined_button/outlined_button_component.dart';
import 'package:payon/core/widgets/display/card/card_component.dart';
import 'package:payon/core/widgets/display/list_tile/list_tile_component.dart';
import 'package:payon/core/widgets/layout/spacing/spacing_component.dart';
import 'package:payon/core/widgets/navigation/app_bar/app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBarComponent(title: l10n.welcome_title),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding,
        ),
        child: Column(
          children: [
            const SpacingComponent.vertical(AppConstants.padding),
            _buildWelcomeCard(
              Iconsax.flash_1_copy,
              l10n.send_money_title,
              l10n.send_money_subtitle,
            ),
            const SpacingComponent.vertical(AppConstants.padding),
            _buildWelcomeCard(
              Iconsax.shield_tick_copy,
              l10n.secure_payments_title,
              l10n.secure_payments_subtitle,
            ),
            const SpacingComponent.vertical(AppConstants.padding),
            _buildWelcomeCard(
              Iconsax.status_up_copy,
              l10n.track_everything_title,
              l10n.track_everything_subtitle,
            ),
            const Spacer(),
            FilledButtonComponent.icon(
              label: l10n.get_started,
              icon: Iconsax.arrow_right_1,
              onPressed: () => context.push(AppRouter.getStarted),
            ),
            const SpacingComponent.vertical(AppConstants.padding),
            OutlinedButtonComponent.icon(
              label: l10n.login,
              icon: Iconsax.arrow_right_1,
              onPressed: () => context.push(AppRouter.login),
            ),
            const SpacingComponent.vertical(AppConstants.padding),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard(IconData icon, String title, String subtitle) {
    return CardComponent(
      padding: EdgeInsets.zero,
      child: ListTileComponent(
        leading: Icon(icon, size: AppConstants.iconSize),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
