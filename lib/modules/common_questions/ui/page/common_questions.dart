import 'package:flutter/material.dart';

import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class CommonQuestions extends StatelessWidget {
  const CommonQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SidePageAppBarComponent(title: 'Common Questions'),
      body: Center(child: Text('Common Questions')),
    );
  }
}
