import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/settings_tile_data.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SliverAppBarWithWavesComponent(
            scrollController: scrollController,
            title: l10n.settings,
          ),

          _buildSectionHeader(context, l10n.account_and_security),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.edit_profile,
              subtitle: l10n.edit_profile_subtitle,
              leading: Icons.person_outline,
              onTap: () {},
            ),
            SettingsTileData(
              title: l10n.confirm_password,
              subtitle: l10n.change_password_subtitle,
              leading: Icons.lock_outline,
              onTap: () => context.push(AppRouter.changePassword),
            ),
            SettingsTileData(
              title: l10n.two_factor_auth_title,
              subtitle: l10n.two_factor_auth_subtitle,
              leading: Icons.security,
              onTap: () => context.push(AppRouter.twoFactorAuth),
            ),
            SettingsTileData(
              title: l10n.biometric_login,
              subtitle: l10n.biometric_login_subtitle,
              leading: Icons.fingerprint,
              onTap: () => context.push(AppRouter.fingerprintAuth),
            ),
            SettingsTileData(
              title: l10n.security_alerts,
              subtitle: l10n.security_alerts_subtitle,
              leading: Icons.gpp_maybe_outlined,
              onTap: () => context.push(AppRouter.securityAlerts),
            ),
          ]),

          _buildSectionHeader(context, l10n.preferences),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.app_language,
              subtitle: l10n.language_name,
              leading: Icons.language,
              onTap: () => context.push(AppRouter.language),
            ),
            SettingsTileData(
              title: l10n.appearance,
              subtitle: l10n.appearance_subtitle,
              leading: Icons.dark_mode_outlined,
              onTap: () => context.push(AppRouter.theme),
            ),
            SettingsTileData(
              title: l10n.notification_settings,
              subtitle: l10n.notification_settings_subtitle,
              leading: Icons.notifications_none,
              onTap: () => context.push(AppRouter.notifications),
            ),
          ]),

          _buildSectionHeader(context, l10n.help_and_support),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.faq,
              subtitle: l10n.faq_subtitle,
              leading: Icons.help_outline,
              onTap: () => context.push(AppRouter.commonQuestions),
            ),
            SettingsTileData(
              title: l10n.contact_us,
              subtitle: l10n.contact_us_subtitle,
              leading: Icons.support_agent,
              onTap: () => context.push(AppRouter.contactUs),
            ),
          ]),

          _buildSectionHeader(context, l10n.about),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.privacy_policy,
              subtitle: l10n.privacy_policy_subtitle,
              leading: Icons.privacy_tip_outlined,
              onTap: () => context.push(AppRouter.privacyPolicy),
            ),
            SettingsTileData(
              title: l10n.about_app,
              subtitle: l10n.app_version,
              leading: Icons.info_outline,
              onTap: () => context.push(AppRouter.appVersion),
            ),
            SettingsTileData(
              title: l10n.about_developers,
              subtitle: l10n.about_developers_subtitle,
              leading: Icons.developer_mode,
              onTap: () => context.push(AppRouter.developerTeam),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppConfig.padding,
          right: AppConfig.padding,
          top: AppConfig.padding,
          bottom: AppConfig.paddingHalf,
        ),
        child: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _buildSectionItems(List<SettingsTileData> items) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      sliver: SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isFirst = index == 0;
          final isLast = index == items.length - 1;
          final isSingle = items.length == 1;

          if (isSingle) {
            return ListTileIconComponent(
              title: item.title,
              leading: item.leading,
              trailing: item.trailing,
              subtitle: item.subtitle,
              onTap: item.onTap,
            );
          } else if (isFirst) {
            return ListTileIconComponent.top(
              title: item.title,
              leading: item.leading,
              trailing: item.trailing,
              subtitle: item.subtitle,
              onTap: item.onTap,
            );
          } else if (isLast) {
            return ListTileIconComponent.bottom(
              title: item.title,
              leading: item.leading,
              trailing: item.trailing,
              subtitle: item.subtitle,
              onTap: item.onTap,
            );
          } else {
            return ListTileIconComponent.middle(
              title: item.title,
              leading: item.leading,
              trailing: item.trailing,
              subtitle: item.subtitle,
              onTap: item.onTap,
            );
          }
        },
      ),
    );
  }
}
