import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/svgs_images.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class SecurityAlertsPage extends HookWidget {
  const SecurityAlertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scrollController = useScrollController();
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.security_alerts),
      body: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.all(AppConfig.padding),
          child: SvgComponent.descriptions(
            path: SvgsImages.empySvg,
            title: l10n.no_security_alerts_for_you,
            subtitle: l10n.no_security_alerts_for_you_desc,
          ),
        ),
      ),
    );
  }
}
