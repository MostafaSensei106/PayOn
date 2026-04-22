import 'package:flutter/material.dart';

import '../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Privacy Policy'),
      body: Center(child: Text('Privacy Policy')),
    );
  }
}
