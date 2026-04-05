import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SidePageSliverAppBarWithWavesComponent(
            scrollController: _scrollController,
            title: l10n.welcome_title,
            showBackButton: false,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConfig.padding,
              ),
              child: Column(
                children: [
                  const SpacingComponent.vertical(AppConfig.padding),
                  _buildWelcomeCard(
                    Iconsax.flash_1_copy,
                    l10n.send_money_title,
                    l10n.send_money_subtitle,
                  ),
                  const SpacingComponent.vertical(AppConfig.padding),
                  _buildWelcomeCard(
                    Iconsax.shield_tick_copy,
                    l10n.secure_payments_title,
                    l10n.secure_payments_subtitle,
                  ),
                  const SpacingComponent.vertical(AppConfig.padding),
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
                  const SpacingComponent.vertical(AppConfig.padding),
                  OutlinedButtonComponent.icon(
                    label: l10n.login,
                    icon: Iconsax.arrow_right_1,
                    onPressed: () => context.push(AppRouter.login),
                  ),
                  const SpacingComponent.vertical(AppConfig.padding),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeCard(
    final IconData icon,
    final String title,
    final String subtitle,
  ) => CardComponent(
    padding: EdgeInsets.zero,
    child: ListTileComponent(
      leading: Icon(icon, size: AppConfig.iconSize),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
    ),
  );
}
