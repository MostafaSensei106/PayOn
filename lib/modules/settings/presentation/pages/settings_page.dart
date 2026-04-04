import 'package:flutter/material.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    return Scaffold(
      appBar: AppBarComponent(title: l10n.settings),
      body: Center(
        child: Text(
          l10n.settings,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
