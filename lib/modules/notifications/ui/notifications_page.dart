import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../core/constants/app_config.dart';
import '../../../core/constants/svgs_images.dart';
import '../../../core/extensions/extensions.dart';
import '../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../core/widgets/display/svg/svg_component.dart';
import '../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class NotificationsPage extends HookWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scrollController = useScrollController();

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.notifications,
        actions: [
          IconButtonComponent.filled(
            icon: Iconsax.setting_3_copy,
            onPressed: () => context.toast.showSimple(context, 'Settings'),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.all(AppConfig.padding),
          child: SvgComponent.descriptions(
            path: SvgsImages.notificationsSvg,
            title: l10n.no_notifications_yet,
            subtitle: l10n.no_notifications_yet_des,
          ),
        ),
      ),
    );
  }
}
