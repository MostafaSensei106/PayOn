import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/settings_tile_data.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';

final class SettingsPage extends HookWidget {
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

          _buildSectionHeader(context, l10n.account_security),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.biometric_auth,
              subtitle: l10n.biometric_auth_desc,
              leading: Iconsax.finger_scan_copy,
              onTap: () => const FingerprintAuthRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.security_alerts,
              subtitle: l10n.security_alerts_desc,
              leading: Iconsax.security_safe_copy,
              onTap: () => const SecurityAlertsRoute().push<void>(context),
            ),
          ]),

          _buildSectionHeader(context, l10n.preferences),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.app_language,
              subtitle: l10n.language_name,
              leading: Iconsax.global_copy,
              onTap: () => const ChangeLanguageRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.appearance,
              subtitle: l10n.appearance_desc,
              leading: Iconsax.magicpen_copy,
              onTap: () => const ChangeThemeRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.notification_settings,
              subtitle: l10n.notification_settings_desc,
              leading: Iconsax.notification_copy,
              onTap: () => const NotificationsRoute().push<void>(context),
            ),
          ]),

          _buildSectionHeader(context, l10n.help_support),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.faq,
              subtitle: l10n.faq_desc,
              leading: Iconsax.message_question_copy,
              onTap: () => const CommonQuestionsRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.contact_us,
              subtitle: l10n.contact_us_desc,
              leading: Iconsax.call_calling_copy,
              onTap: () => const ContactUsRoute().push<void>(context),
            ),
          ]),

          _buildSectionHeader(context, l10n.about),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.privacy_policy,
              subtitle: l10n.privacy_policy_desc,
              leading: Iconsax.security_user_copy,
              onTap: () => const PrivacyPolicyRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.terms_and_conditions,
              subtitle: l10n.terms_and_conditions_desc,
              leading: Iconsax.document_text_copy,
              onTap: () => const TermsAndConditionsRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.about_app,
              subtitle: l10n.about_app_desc,
              leading: Iconsax.information_copy,
              onTap: () => const AboutAppRoute().push<void>(context),
            ),
            SettingsTileData(
              title: l10n.about_developers,
              subtitle: l10n.about_developers_desc,
              leading: Iconsax.code_copy,
              onTap: () => const DeveloperTeamRoute().push<void>(context),
            ),
          ]),

          _buildSectionHeader(context, l10n.account_actions),
          _buildSectionItems([
            SettingsTileData(
              title: l10n.logout,
              subtitle: l10n.logout_desc,
              leading: Iconsax.logout_copy,
              onTap: () {},
            ),
          ]),
          SliverToBoxAdapter(child: SizedBox(height: AppConfig.paddingHalf.h)),
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
