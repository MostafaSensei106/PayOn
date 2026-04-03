import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/widgets/buttons/outlined_button/outlined_button_component.dart';
import 'package:payon/core/widgets/inputs/text_field/text_field_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class StepTwoKYC extends StatelessWidget {
  const StepTwoKYC({super.key, required this.dateController});

  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: AppConfig.padding),
      child: Column(
        spacing: AppConfig.paddingHalf,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.tier_1_title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          TextFieldComponent(
            label: l10n.full_name_id,
            prefixIcon: Iconsax.user_copy,
          ),
          TextFieldComponent(
            controller: dateController,
            label: l10n.dob,
            prefixIcon: Iconsax.calendar_1_copy,
            readOnly: true,
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      datePickerTheme: DatePickerThemeData(
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppConfig.outBorderRadius,
                          ),
                        ),
                        headerBackgroundColor: Theme.of(
                          context,
                        ).colorScheme.primaryContainer,
                        headerForegroundColor: Theme.of(
                          context,
                        ).colorScheme.onPrimaryContainer,
                        dayShape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppConfig.outBorderRadius,
                            ),
                          ),
                        ),
                        todayForegroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        todayBackgroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.primaryContainer,
                        ),
                        yearShape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppConfig.outBorderRadius,
                            ),
                          ),
                        ),
                        cancelButtonStyle: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppConfig.inBorderRadius,
                            ),
                          ),
                        ),
                        confirmButtonStyle: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppConfig.inBorderRadius,
                            ),
                          ),
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primary,
                          foregroundColor: Theme.of(
                            context,
                          ).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if (date != null) {
                dateController.text = date.toString().split(' ')[0];
              }
            },
          ),
          TextFieldComponent(
            label: l10n.nationality,
            prefixIcon: Iconsax.global_copy,
          ),
          Text(
            l10n.tier_2_title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          TextFieldComponent(
            label: l10n.national_id_passport,
            prefixIcon: Iconsax.personalcard_copy,
          ),
          OutlinedButtonComponent(label: l10n.upload_id, onPressed: () {}),
          Text(
            l10n.tier_3_title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          TextFieldComponent(
            label: l10n.residential_address,
            prefixIcon: Iconsax.location_copy,
          ),
          OutlinedButtonComponent(
            label: l10n.upload_address_proof,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
