import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_constants.dart';
import 'package:payon/core/widgets/buttons/filled_button/filled_button_component.dart';
import 'package:payon/core/widgets/buttons/text_button/text_button_component.dart';
import 'package:payon/core/widgets/inputs/password_field/password_field_component.dart';
import 'package:payon/core/widgets/inputs/text_field/text_field_component.dart';
import 'package:payon/core/widgets/layout/spacing/spacing_component.dart';
import 'package:payon/core/widgets/navigation/app_bar/app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBarComponent(title: l10n.login),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpacingComponent.vertical(AppConstants.extraLargeSpacing),
            Text(
              l10n.welcome_back,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SpacingComponent.vertical(AppConstants.smallSpacing),
            Text(
              l10n.login_subtitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            const SpacingComponent.vertical(AppConstants.extraLargeSpacing),
            TextFieldComponent(
              label: l10n.email_address,
              prefixIcon: Iconsax.sms,
              keyboardType: TextInputType.emailAddress,
            ),
            const SpacingComponent.vertical(AppConstants.screenPadding),
            PasswordFieldComponent(
              label: l10n.password,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButtonComponent(
                label: l10n.forgot_password,
                onPressed: () {},
              ),
            ),
            const SpacingComponent.vertical(AppConstants.largeSpacing),
            FilledButtonComponent(
              label: l10n.login,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
