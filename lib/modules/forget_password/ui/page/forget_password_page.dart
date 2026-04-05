import 'package:flutter/material.dart';

import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.forgot_password),
      body: Center(
        child: Text(
          l10n.forgot_password,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
