import 'package:flutter/material.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../l10n/app_localizations.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({required this.l10n, super.key});
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.welcome_back,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SpacingComponent.vertical(AppConfig.paddingHalf),
        Text(
          l10n.login_desc,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
