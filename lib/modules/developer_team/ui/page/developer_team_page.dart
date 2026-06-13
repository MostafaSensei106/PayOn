import 'package:flutter/material.dart';

import '../../../../core/constants/svgs_images.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class DeveloperTeamPage extends StatelessWidget {
  const DeveloperTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.developer_team),
      body: Center(
        child: Column(
          children: [
            const SvgComponent(path: SvgsImages.developerAvatarSvg),
            Text(l10n.developer_team),
          ],
        ),
      ),
    );
  }
}
