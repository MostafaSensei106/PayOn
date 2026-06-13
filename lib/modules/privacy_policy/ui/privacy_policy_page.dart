import 'package:flutter/material.dart';

import '../../../core/constants/svgs_images.dart';
import '../../../core/extensions/extensions.dart';
import '../../../core/widgets/display/svg/svg_component.dart';
import '../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.privacy_policy),
      body: const Center(
        child: Column(children: [SvgComponent(path: SvgsImages.termsSvg)]),
      ),
    );
  }
}
