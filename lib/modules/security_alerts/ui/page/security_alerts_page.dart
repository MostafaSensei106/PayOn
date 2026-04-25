import 'package:flutter/material.dart';

import '../../../../core/constants/svgs_images.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class SecurityAlertsPage extends StatelessWidget {
  const SecurityAlertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Security Alerts'),
      body: Center(
        child: Column(
          children: [
            SvgComponent(path: SvgsImages.alertSvg),
            Text('Security Alerts'),
          ],
        ),
      ),
    );
  }
}
