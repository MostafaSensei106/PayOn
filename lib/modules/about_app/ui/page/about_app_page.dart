import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/svgs_images.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/cubit/about_app_cubit.dart';
import '../../logic/cubit/about_app_state.dart';

typedef AppInfoItem = ({String title, String subtitle, IconData icon});
typedef AppInfoSection = ({String sectionTitle, List<AppInfoItem> items});

final class AboutAppPage extends HookWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localKeys;
    final scrollController = useScrollController();

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.about_app),
      body: BlocBuilder<AboutAppCubit, AboutAppState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (info) {
              final sections = <AppInfoSection>[
                (
                  sectionTitle: l10n.app_identity,
                  items: [
                    (
                      title: l10n.app_name_title,
                      subtitle: info.appName,
                      icon: Iconsax.mobile_programming_copy,
                    ),
                    (
                      title: l10n.package_name,
                      subtitle: info.packageName,
                      icon: Iconsax.box_2_copy,
                    ),
                    (
                      title: l10n.version,
                      subtitle: 'v${info.version}',
                      icon: Iconsax.information_copy,
                    ),
                    (
                      title: l10n.build_number,
                      subtitle: info.buildNumber,
                      icon: Iconsax.setting_2_copy,
                    ),
                  ],
                ),
                (
                  sectionTitle: l10n.operating_environment,
                  items: [
                    (
                      title: l10n.operating_system,
                      subtitle: info.operatingSystemName.replaceFirst('a', 'A'),
                      icon: info.operatingSystemName == 'android'
                          ? Iconsax.android_copy
                          : Iconsax.apple_copy,
                    ),
                    (
                      title: l10n.os_version,
                      subtitle: info.operatingSystemVersion,
                      icon: Iconsax.cpu_charge_copy,
                    ),
                    (
                      title: l10n.app_mode,
                      subtitle: info.isDebug ? l10n.debug : l10n.release,
                      icon: Iconsax.code_1_copy,
                    ),
                  ],
                ),
                (
                  sectionTitle: l10n.technologies_used,
                  items: [
                    (
                      title: l10n.dart_sdk,
                      subtitle:
                          '${info.dartVersion} (${info.dartChanal ?? "N/A"})',
                      icon: Iconsax.code_1_copy,
                    ),

                    (
                      title: l10n.flutter_sdk,
                      subtitle:
                          '${info.flutterVersion ?? "N/A"} (${info.flutterChanal ?? "N/A"})',
                      icon: Icons.flutter_dash_rounded,
                    ),
                  ],
                ),
                (
                  sectionTitle: l10n.installation_information,
                  items: [
                    (
                      title: l10n.installer_store,
                      subtitle: info.installerStore ?? 'N/A',
                      icon: Iconsax.shop_copy,
                    ),
                    (
                      title: l10n.install_date,
                      subtitle:
                          info.installDate?.toString().split(' ')[0] ?? 'N/A',
                      icon: Iconsax.calendar_add_copy,
                    ),
                    (
                      title: l10n.update_date,
                      subtitle:
                          info.updateTime?.toString().split(' ')[0] ?? 'N/A',
                      icon: Iconsax.calendar_edit_copy,
                    ),
                  ],
                ),
              ];

              return SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConfig.padding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: SvgComponent(path: SvgsImages.unboxingSvg),
                    ),

                    ...sections.map(
                      (section) => _buildSection(context, section),
                    ),
                  ],
                ),
              );
            },
            error: (message) => Center(child: Text(message)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildSection(BuildContext context, AppInfoSection section) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConfig.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConfig.paddingHalf,
              vertical: AppConfig.paddingHalf,
            ),
            child: Text(
              section.sectionTitle,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),

          ...section.items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final leadingIcon = item.icon;

            if (section.items.length == 1) {
              return ListTileIconComponent.top(
                leading: leadingIcon,
                title: item.title,
                subtitle: item.subtitle,
              );
            }

            if (index == 0) {
              return ListTileIconComponent.top(
                leading: leadingIcon,
                title: item.title,
                subtitle: item.subtitle,
              );
            } else if (index == section.items.length - 1) {
              return ListTileIconComponent.bottom(
                leading: leadingIcon,
                title: item.title,
                subtitle: item.subtitle,
              );
            } else {
              return ListTileIconComponent.middle(
                leading: leadingIcon,
                title: item.title,
                subtitle: item.subtitle,
              );
            }
          }),
        ],
      ),
    );
  }
}
