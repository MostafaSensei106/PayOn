import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/inputs/password_field/password_field_component.dart';
import '../../../../core/widgets/inputs/text_field/text_field_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../../../l10n/app_localizations.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.login),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpacingComponent.vertical(AppConfig.padding * 3),
            Text(
              l10n.welcome_back,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SpacingComponent.vertical(AppConfig.paddingHalf),
            Text(
              l10n.login_subtitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SpacingComponent.vertical(AppConfig.padding * 3),
            TextFieldComponent(
              label: l10n.email_address,
              prefixIcon: Iconsax.sms_copy,
              keyboardType: TextInputType.emailAddress,
            ),
            const SpacingComponent.vertical(AppConfig.padding),
            PasswordFieldComponent(label: l10n.password),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButtonComponent(
                label: l10n.forgot_password,
                onPressed: () {},
              ),
            ),
            const SpacingComponent.vertical(AppConfig.padding * 2),
            FilledButtonComponent(
              label: l10n.login,
              onPressed: () => context.go(AppRouter.home),
            ),
          ],
        ),
      ),
    );
  }
}
