import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/router/app_router.dart';
import 'package:payon/core/widgets/buttons/filled_button/filled_button_component.dart';
import 'package:payon/core/widgets/layout/spacing/spacing_component.dart';
import 'package:payon/core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.get_started,
        useBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConfig.padding),
        child: Column(
          children: [
            const Spacer(),
            Icon(
              Iconsax.wallet_3,
              size: 100.0,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SpacingComponent.vertical(AppConfig.padding * 2),
            Text(
              l10n.manage_finances_title,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SpacingComponent.vertical(AppConfig.padding),
            Text(
              l10n.manage_finances_subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const Spacer(),
            FilledButtonComponent(
              label: l10n.lets_get_started,
              onPressed: () => context.go(AppRouter.home),
            ),
            const SpacingComponent.vertical(AppConfig.padding * 2),
          ],
        ),
      ),
    );
  }
}
