import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Change Password'),
      body: Center(child: Text('Change Password')),
    );
  }
}
