import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/app_enums.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/inputs/checkbox/checkbox_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../logic/cubit/register/register_cubit.dart';

class StepOneAccountDetails extends StatelessWidget {
  const StepOneAccountDetails({
    required this.termsAccepted,
    required this.onTermsChanged,
    required this.privacyAccepted,
    required this.onPrivacyChanged,
    required this.allAccepted,
    required this.onAllChanged,
    required this.dateController,
    super.key,
  });

  final bool termsAccepted;
  final bool privacyAccepted;
  final bool allAccepted;
  final ValueChanged<bool?> onTermsChanged;
  final ValueChanged<bool?> onPrivacyChanged;
  final ValueChanged<bool?> onAllChanged;
  final TextEditingController dateController;

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
            TextFormFieldComponent(
              label: l10n.user_name,
              prefixIcon: Iconsax.user_copy,
              initialValue: form.name.value,
              onChanged: registerCubit.nameOnChanged,
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
              controller: dateController,
              label: l10n.dob,
              prefixIcon: Iconsax.calendar_1_copy,
              readOnly: true,
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now().subtract(
                    const Duration(days: 365 * 18),
                  ),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  final formattedDate = date.toString().split(' ')[0];
                  dateController.text = formattedDate;
                  registerCubit.birthDateOnChanged(formattedDate);
                }
              },
              onChanged: (_) {},
            ),
            DropdownButtonFormField<GenderType>(
              value: form.gender == GenderType.none ? null : form.gender,
              hint: Text(l10n.gender),
              items: [GenderType.male, GenderType.female]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                  .toList(),
              onChanged: (val) => registerCubit.genderOnChanged(val!),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.user_tag_copy),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppConfig.outBorderRadius,
                  ),
                ),
              ),
            ),
            TextFormFieldComponent(
              label: l10n.nationality,
              prefixIcon: Iconsax.global_copy,
              initialValue: form.nationalityCode,
              onChanged: registerCubit.nationalityOnChanged,
            ),
            TextFormFieldComponent(
              label: 'Country',
              prefixIcon: Iconsax.location_copy,
              initialValue: form.country,
              onChanged: registerCubit.countryOnChanged,
            ),
            TextFormFieldComponent(
              label: 'City ID',
              prefixIcon: Iconsax.building_3_copy,
              initialValue: form.cityId,
              onChanged: registerCubit.cityIdOnChanged,
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
                  title: l10n.accept_terms,
                  value: termsAccepted,
                  onChanged: onTermsChanged,
                ),
                CheckboxComponent(
                  title: l10n.accept_privacy_policy,
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
