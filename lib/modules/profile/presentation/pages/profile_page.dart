import 'package:flutter/material.dart';
import 'package:payon/core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.profile, useBackButton: true),
      body: Center(
        child: Text(
          l10n.profile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
