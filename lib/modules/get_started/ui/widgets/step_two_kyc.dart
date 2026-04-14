import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../logic/cubit/register/register_cubit.dart';

class StepTwoKYC extends StatelessWidget {
  const StepTwoKYC({required this.dateController, super.key});

  final TextEditingController dateController;

  Future<void> _pickFile(BuildContext context, bool isId) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      if (isId) {
        context.read<RegisterCubit>().idFileOnChanged(File(image.path));
      } else {
        context.read<RegisterCubit>().addressFileOnChanged(File(image.path));
      }
    }
  }

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
              l10n.tier_1_title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextFormFieldComponent(
              label: l10n.full_name_id,
              prefixIcon: Iconsax.user_copy,
              initialValue: form.name.value,
              onChanged: registerCubit.firstNameOnChanged,
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
                  builder: (final context, final child) => Theme(
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
                  ),
                );
                if (date != null) {
                  final formattedDate = date.toString().split(' ')[0];
                  dateController.text = formattedDate;
                  registerCubit.birthDateOnChanged(formattedDate);
                }
              },
              onChanged: (String p1) {},
            ),
            TextFormFieldComponent(
              label: l10n.nationality,
              prefixIcon: Iconsax.global_copy,
              initialValue: form.nationalityCode,
              onChanged: registerCubit.nationalityOnChanged,
            ),
            Text(
              l10n.tier_2_title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextFormFieldComponent(
              label: l10n.national_id_passport,
              prefixIcon: Iconsax.personalcard_copy,
              onChanged: (String p1) {},
            ),
            OutlinedButtonComponent.icon(
              label: form.idFile != null ? 'ID Uploaded' : l10n.upload_id,
              icon: form.idFile != null
                  ? Icons.check_circle
                  : Iconsax.document_upload_copy,
              onPressed: () => _pickFile(context, true),
            ),
            Text(
              l10n.tier_3_title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextFormFieldComponent(
              label: l10n.residential_address,
              prefixIcon: Iconsax.location_copy,
              initialValue: form.cityId,
              onChanged: registerCubit.cityIdOnChanged,
            ),
            OutlinedButtonComponent.icon(
              label: form.addressFile != null
                  ? 'Proof Uploaded'
                  : l10n.upload_address_proof,
              icon: form.addressFile != null
                  ? Icons.check_circle
                  : Iconsax.document_upload_copy,
              onPressed: () => _pickFile(context, false),
            ),
          ],
        ),
      ],
    );
  }
}
