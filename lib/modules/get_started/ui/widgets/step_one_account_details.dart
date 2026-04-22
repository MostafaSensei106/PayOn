import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/inputs/checkbox/checkbox_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../logic/cubit/register/register_cubit.dart';

class StepOneAccountDetails extends StatelessWidget {
  const StepOneAccountDetails({
    required this.termsAccepted,
    required this.onTermsChanged,
    required this.privacyAccepted,
    required this.onPrivacyChanged,
    required this.allAccepted,
    required this.onAllChanged,
    super.key,
  });

  final bool termsAccepted;
  final bool privacyAccepted;
  final bool allAccepted;
  final ValueChanged<bool?> onTermsChanged;
  final ValueChanged<bool?> onPrivacyChanged;
  final ValueChanged<bool?> onAllChanged;

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final registerCubit = context.read<RegisterCubit>();
    final form = context.watch<RegisterCubit>().state.form;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      children: [
        Column(
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
                  child: TextFormFieldComponent(
                    label: l10n.first_name,
                    prefixIcon: Iconsax.user_copy,
                    initialValue: form.firstName.value,
                    onChanged: registerCubit.firstNameOnChanged,
                  ),
                ),
                const SpacingComponent.horizontal(AppConfig.paddingHalf),
                Expanded(
                  child: TextFormFieldComponent(
                    label: l10n.last_name,
                    prefixIcon: Iconsax.user_copy,
                    initialValue: form.lastName.value,
                    onChanged: registerCubit.lastNameOnChanged,
                  ),
                ),
              ],
            ),
            TextFormFieldComponent(
              label: l10n.email_address,
              prefixIcon: Iconsax.message_2_copy,
              initialValue: form.email.value,
              onChanged: registerCubit.emailOnChanged,
            ),
            TextFormFieldComponent(
              label: l10n.phone_number,
              prefixIcon: Iconsax.call_copy,
              initialValue: form.phoneNumber.value,
              onChanged: registerCubit.phoneNumberOnChanged,
            ),
            TextFormFieldComponent(
              label: l10n.password,
              prefixIcon: Iconsax.lock_copy,
              initialValue: form.password.value,
              onChanged: registerCubit.passwordOnChanged,
              obscureText: true,
            ),
            TextFormFieldComponent(
              label: l10n.confirm_password,
              prefixIcon: Iconsax.lock_copy,
              initialValue: form.confirmPassword.value,
              onChanged: registerCubit.confirmPasswordOnChanged,
              obscureText: true,
            ),
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
      ],
    );
  }
}
