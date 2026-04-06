import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class DeveloperTeam extends StatelessWidget {
  const DeveloperTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Developer Team'),
      body: Center(child: Text('Developer Team')),
    );
  }
}
