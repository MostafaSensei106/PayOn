import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/l10n/app_localizations.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.welcome_title), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          spacing: 16,
          children: [
            WelcomeCardWidget(
              leading: Iconsax.flash_1_copy,
              title: l10n.send_money_title,
              subtitle: l10n.send_money_subtitle,
            ),
            WelcomeCardWidget(
              leading: Iconsax.shield_tick_copy,
              title: l10n.secure_payments_title,
              subtitle: l10n.secure_payments_subtitle,
            ),
            WelcomeCardWidget(
              leading: Iconsax.status_up_copy,
              title: l10n.track_everything_title,
              subtitle: l10n.track_everything_subtitle,
            ),

            SizedBox(
              width: 0.30.sw,
              child: DropdownButtonFormField<String>(
                initialValue: 'en',
                elevation: 0,
                enableFeedback: true,
                // decoration: const InputDecoration(border: OutlineInputBorder()),
                icon: Icon(Iconsax.arrow_circle_down_copy),
                dropdownColor: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
                items: [
                  DropdownMenuItem(value: 'en', child: Text(l10n.english)),
                  DropdownMenuItem(value: 'ar', child: Text(l10n.arabic)),
                ],
                onChanged: (value) {},
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                icon: const Icon(Iconsax.arrow_right_1),
                label: Text(l10n.get_started),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Iconsax.arrow_right_1),
                label: Text(l10n.login),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class WelcomeCardWidget extends StatelessWidget {
  const WelcomeCardWidget({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
  });
  final IconData leading;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(leading, size: 27),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
