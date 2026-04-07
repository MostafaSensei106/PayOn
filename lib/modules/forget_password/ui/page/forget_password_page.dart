import 'package:flutter/material.dart';

import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/services/toast/base_toast_service.dart';
import '../../../../core/widgets/buttons/elevated_button/elevated_button_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.forgot_password),
      body: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            ElevatedButtonComponent(
              label: 'Success Toast',
              onPressed: () => getIt<BaseToastService>().showSuccess(
                context,
                'Success Message',
              ),
            ),
            ElevatedButtonComponent(
              label: 'Error Toast',
              onPressed: () =>
                  getIt<BaseToastService>().showError(context, 'Error Message'),
            ),
            ElevatedButtonComponent(
              label: 'Warning Toast',
              onPressed: () => getIt<BaseToastService>().showWarning(
                context,
                'Warning Message',
              ),
            ),
            ElevatedButtonComponent(
              label: 'Info Toast',
              onPressed: () =>
                  getIt<BaseToastService>().showInfo(context, 'Info Message'),
            ),
            ElevatedButtonComponent(
              label: 'Simple Toast',
              onPressed: () => getIt<BaseToastService>().showSimple(
                context,
                'Simple Message',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
