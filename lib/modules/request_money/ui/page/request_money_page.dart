import 'package:flutter/material.dart';

import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class RequestMoneyPage extends StatelessWidget {
  const RequestMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.request_money),
      body: const Center(child: Text('Request Money Page')),
    );
  }
}
