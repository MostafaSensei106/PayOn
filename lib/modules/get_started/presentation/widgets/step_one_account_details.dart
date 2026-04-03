import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/inputs/checkbox/checkbox_component.dart';
import '../../../../core/widgets/inputs/password_field/password_field_component.dart';
import '../../../../core/widgets/inputs/text_field/text_field_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../l10n/app_localizations.dart';

class StepOneAccountDetails extends StatelessWidget {
  const StepOneAccountDetails({
    required this.termsAccepted, required this.onTermsChanged, required this.privacyAccepted, required this.onPrivacyChanged, required this.allAccepted, required this.onAllChanged, super.key,
  });

  final bool termsAccepted;
  final bool privacyAccepted;
  final bool allAccepted;
  final ValueChanged<bool?> onTermsChanged;
  final ValueChanged<bool?> onPrivacyChanged;
  final ValueChanged<bool?> onAllChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      child: Column(
        spacing: AppConfig.paddingHalf,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.personal_details,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: TextFieldComponent(
                  label: l10n.first_name,
                  prefixIcon: Iconsax.user_copy,
                ),
              ),
              const SpacingComponent.horizontal(AppConfig.paddingHalf),
              Expanded(
                child: TextFieldComponent(
                  label: l10n.last_name,
                  prefixIcon: Iconsax.user_copy,
                ),
              ),
            ],
          ),
          TextFieldComponent(
            label: l10n.email_address,
            prefixIcon: Iconsax.message_2_copy,
          ),
          TextFieldComponent(
            label: l10n.phone_number,
            prefixIcon: Iconsax.call_copy,
          ),
          PasswordFieldComponent(label: l10n.password),
          PasswordFieldComponent(label: l10n.confirm_password),
          Column(
            children: [
              CheckboxComponent(
                title: l10n.i_accept_terms_and_conditions,
                value: termsAccepted,
                onChanged: onTermsChanged,
              ),
              const SpacingComponent.horizontal(4),
              CheckboxComponent(
                title: l10n.i_accept_privacy_policy,
                value: privacyAccepted,
                onChanged: onPrivacyChanged,
              ),
              const Divider(),
              CheckboxComponent(
                title: l10n.accept_all,
                value: allAccepted,
                onChanged: onAllChanged,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
