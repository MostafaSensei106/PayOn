import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'App Theme'),
      body: Center(child: Text('App Theme')),
    );
  }
}
