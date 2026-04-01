import 'package:flutter/material.dart';
import 'package:payon/core/widgets/navigation/app_bar/app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
