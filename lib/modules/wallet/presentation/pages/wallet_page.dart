import 'package:flutter/material.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../../../../l10n/app_localizations.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBarComponent(title: l10n.wallet),
      body: Center(
        child: Text(
          l10n.wallet,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
