import 'package:flutter/material.dart';

import '../../../../core/constants/svgs_images.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class DeveloperTeamPage extends StatelessWidget {
  const DeveloperTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Developer Team'),
      body: Center(
        child: Column(
          children: [
            SvgComponent(path: SvgsImages.developerAvatarSvg),
            Text('Developer Team'),
          ],
        ),
      ),
    );
  }
}
