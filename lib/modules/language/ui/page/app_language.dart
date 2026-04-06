import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class AppLanguage extends StatelessWidget {
  const AppLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'App Language'),
      body: Center(child: Text('App Language')),
    );
  }
}
