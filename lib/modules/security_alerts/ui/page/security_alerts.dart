import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class SecurityAlerts extends StatelessWidget {
  const SecurityAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Security Alerts'),
      body: Center(child: Text('Security Alerts')),
    );
  }
}
