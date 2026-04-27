import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/svgs_images.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class TwoFactorAuth extends HookWidget {
  const TwoFactorAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localKeys;
    final scrollController = useScrollController();
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.two_factor_auth),
      body: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: EdgeInsets.all(AppConfig.padding),
          child: SvgComponent.descriptions(
            path: SvgsImages.twoFactorAuthSvg,
            title: l10n.two_factor_auth,
            subtitle: l10n.two_factor_auth_desc,
          ),
        ),
      ),
    );
  }
}
