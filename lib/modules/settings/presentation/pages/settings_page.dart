import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/s.dart';
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

          _buildSectionHeader(context, 'الحساب والأمان'),
          _buildSectionItems([
            SettingsTileData(
              title: 'تعديل الملف الشخصي',
              subtitle: 'تحديث بياناتك الشخصية والصورة',
              leading: Icons.person_outline,
              onTap: () {},
            ),
            SettingsTileData(
              title: 'تغيير كلمة المرور',
              subtitle: 'تحديث الرمز السري الخاص بحسابك',
              leading: Icons.lock_outline,
              onTap: () => context.push(AppRouter.changePassword),
            ),
            SettingsTileData(
              title: 'المصادقة الثنائية (2FA)',
              subtitle: 'إضافة طبقة حماية إضافية لحسابك',
              leading: Icons.security,
              onTap: () => context.push(AppRouter.twoFactorAuth),
            ),
            SettingsTileData(
              title: 'تسجيل الدخول الحيوي',
              subtitle: 'تفعيل البصمة أو التعرف على الوجه',
              leading: Icons.fingerprint,
              onTap: () => context.push(AppRouter.fingerprintAuth),
            ),
            SettingsTileData(
              title: 'تنبيهات الأمان',
              subtitle: 'إشعارات محاولات الدخول غير المعتادة',
              leading: Icons.gpp_maybe_outlined,
              onTap: () => context.push(AppRouter.securityAlerts),
            ),
          ]),

          // ==========================================
          // 2. سكشن التفضيلات (Preferences)
          // ==========================================
          _buildSectionHeader(context, 'التفضيلات'),
          _buildSectionItems([
            SettingsTileData(
              title: 'لغة التطبيق',
              subtitle: 'العربية', // ممكن تخليها متغيرة حسب لغة التطبيق الحالية
              leading: Icons.language,
              onTap: () => context.push(AppRouter.language),
            ),
            SettingsTileData(
              title: 'المظهر',
              subtitle: 'النظام الافتراضي (فاتح/داكن)',
              leading: Icons.dark_mode_outlined,
              onTap: () => context.push(AppRouter.theme),
            ),
            SettingsTileData(
              title: 'إعدادات الإشعارات',
              subtitle: 'التحكم في التنبيهات والأصوات',
              leading: Icons.notifications_none,
              onTap: () => context.push(AppRouter.notifications),
            ),
          ]),

          _buildSectionHeader(context, 'المساعدة والدعم'),
          _buildSectionItems([
            SettingsTileData(
              title: 'الأسئلة الشائعة',
              subtitle: 'إجابات لأكثر الأسئلة طرحاً',
              leading: Icons.help_outline,
              onTap: () => context.push(AppRouter.commonQuestions),
            ),
            SettingsTileData(
              title: 'تواصل معنا',
              subtitle: 'فريق الدعم متاح لمساعدتك',
              leading: Icons.support_agent,
              onTap: () => context.push(AppRouter.contactUs),
            ),
          ]),

          _buildSectionHeader(context, 'حول'),
          _buildSectionItems([
            SettingsTileData(
              title: 'سياسة الخصوصية',
              subtitle: 'كيف نقوم بحماية بياناتك',
              leading: Icons.privacy_tip_outlined,
              onTap: () => context.push(AppRouter.privacyPolicy),
            ),
            SettingsTileData(
              title: 'عن التطبيق',
              subtitle: 'الإصدار 1.0.0',
              leading: Icons.info_outline,
              onTap: () => context.push(AppRouter.appVersion),
            ),
            SettingsTileData(
              title: 'عن المطورين',
              subtitle: 'تعرف على فريق المطورين',
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
