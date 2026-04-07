import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class TwoFactorAuth extends StatelessWidget {
  const TwoFactorAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Two Factor Auth'),
      body: Center(child: Text('Two Factor Auth')),
    );
  }
}
