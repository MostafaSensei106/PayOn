import 'package:flutter/material.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/inputs/otp_field/otp_field_component.dart';
import '../../../../l10n/app_localizations.dart';

class StepThreeOTP extends StatelessWidget {
  const StepThreeOTP({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      child: Column(
        spacing: AppConfig.paddingHalf,
        children: [
          Text(
            l10n.otp_message,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          OtpFieldComponent(onCompleted: (otp) {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${l10n.code_expires_in} ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                '02:59',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Center(
            child: TextButtonComponent(
              onPressed: () {},
              label: l10n.resend_code,
            ),
          ),
        ],
      ),
    );
  }
}
