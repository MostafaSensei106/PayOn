import 'package:flutter/material.dart';

import '../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Notifications'),
      body: Center(child: Text('Notifications')),
    );
  }
}
