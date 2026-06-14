import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/app_enums.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/validator/email_validators.dart';
import '../../../../core/utils/validator/full_name.dart';
import '../../../../core/utils/validator/password.dart';
import '../../../../core/utils/validator/phone_number.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/inputs/checkbox/checkbox_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../logic/cubit/register/register_cubit.dart';

class StepOneAccountDetails extends StatefulWidget {
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
  State<StepOneAccountDetails> createState() => _StepOneAccountDetailsState();
}

class _StepOneAccountDetailsState extends State<StepOneAccountDetails> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

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
              errorText: registerCubit.state.form.name.displayError?.message(
                context,
              ),
            ),
            TextFormFieldComponent(
              label: l10n.email_address,
              prefixIcon: Iconsax.message_2_copy,
              initialValue: form.email.value,
              onChanged: registerCubit.emailOnChanged,
              errorText: registerCubit.state.form.email.displayError?.message(
                context,
              ),
            ),
            TextFormFieldComponent(
              label: l10n.phone_number,
              prefixIcon: Iconsax.call_copy,
              initialValue: form.phoneNumber.value,
              onChanged: registerCubit.phoneNumberOnChanged,
              errorText: registerCubit.state.form.phoneNumber.displayError
                  ?.message(context),
            ),
            TextFormFieldComponent(
              controller: widget.dateController,
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
                  widget.dateController.text = formattedDate;
                  registerCubit.birthDateOnChanged(formattedDate);
                }
              },
              onChanged: (_) {},
            ),
            DropdownButtonFormField<GenderType>(
              initialValue: form.gender == GenderType.none ? null : form.gender,
              hint: Text(l10n.gender),
              items: [GenderType.male, GenderType.female]
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.message(context)),
                    ),
                  )
                  .toList(),
              onChanged: (val) =>
                  registerCubit.genderOnChanged(val ?? GenderType.none),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.user_tag_copy),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppConfig.outBorderRadius,
                  ),
                ),
              ),
            ),
            DropdownButtonFormField<String>(
              initialValue: form.nationalityCode.isEmpty
                  ? null
                  : form.nationalityCode,
              hint: Text(l10n.nationality),
              items: form.countries
                  .map(
                    (e) => DropdownMenuItem(value: e.code, child: Text(e.name)),
                  )
                  .toList(),
              onChanged: (val) => registerCubit.nationalityOnChanged(val ?? ''),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.global_copy),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppConfig.outBorderRadius,
                  ),
                ),
              ),
            ),
            DropdownButtonFormField<String>(
              initialValue: form.country.isEmpty ? null : form.country,
              hint: const Text('Country'),
              items: form.countries
                  .map(
                    (e) => DropdownMenuItem(value: e.code, child: Text(e.name)),
                  )
                  .toList(),
              onChanged: (val) => registerCubit.countryOnChanged(val ?? ''),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.location_copy),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppConfig.outBorderRadius,
                  ),
                ),
              ),
            ),
            TextFormFieldComponent(
              label: 'National ID',
              prefixIcon: Iconsax.card_copy,
              initialValue: form.nationalId,
              onChanged: registerCubit.nationalIdOnChanged,
            ),
            TextFormFieldComponent(
              label: 'Address',
              prefixIcon: Iconsax.map_copy,
              initialValue: form.address,
              onChanged: registerCubit.addressOnChanged,
            ),
            if (form.accountType?.parentId == 7) ...[
              Row(
                children: [
                  Expanded(
                    child: TextFormFieldComponent(
                      label: 'Latitude',
                      prefixIcon: Iconsax.location_copy,
                      initialValue: form.latitude?.toString() ?? '',
                      onChanged: (val) =>
                          registerCubit.latitudeOnChanged(double.tryParse(val)),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: AppConfig.paddingHalf),
                  Expanded(
                    child: TextFormFieldComponent(
                      label: 'Longitude',
                      prefixIcon: Iconsax.location_copy,
                      initialValue: form.longitude?.toString() ?? '',
                      onChanged: (val) => registerCubit.longitudeOnChanged(
                        double.tryParse(val),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ],
            TextFormFieldComponent(
              label: l10n.password,
              prefixIcon: Iconsax.lock_copy,
              suffixIcon: IconButtonComponent(
                icon: _obscurePassword
                    ? Iconsax.eye_copy
                    : Iconsax.eye_slash_copy,
                onPressed: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
              ),
              initialValue: form.password.value,
              onChanged: registerCubit.passwordOnChanged,
              errorText: registerCubit.state.form.password.displayError
                  ?.message(context),
              obscureText: _obscurePassword,
            ),
            TextFormFieldComponent(
              label: l10n.confirm_password,
              prefixIcon: Iconsax.lock_copy,
              suffixIcon: IconButtonComponent(
                icon: _obscureConfirmPassword
                    ? Iconsax.eye_copy
                    : Iconsax.eye_slash_copy,
                onPressed: () => setState(
                  () => _obscureConfirmPassword = !_obscureConfirmPassword,
                ),
              ),
              initialValue: form.confirmPassword.value,
              onChanged: registerCubit.confirmPasswordOnChanged,
              errorText: registerCubit.state.form.confirmPassword.displayError
                  ?.message(context),
              obscureText: _obscureConfirmPassword,
            ),
            Column(
              children: [
                CheckboxComponent(
                  title: l10n.accept_terms,
                  value: widget.termsAccepted,
                  onChanged: widget.onTermsChanged,
                ),
                CheckboxComponent(
                  title: l10n.accept_privacy_policy,
                  value: widget.privacyAccepted,
                  onChanged: widget.onPrivacyChanged,
                ),
                const Divider(),
                CheckboxComponent(
                  title: l10n.accept_all,
                  value: widget.allAccepted,
                  onChanged: widget.onAllChanged,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
