import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SidePageAppBarComponent(title: 'App Version'),
      body: const Center(child: Text('App Version')),
    );
  }
}
