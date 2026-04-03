import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/widgets/buttons/text_button/text_button_component.dart';
import 'package:payon/core/widgets/inputs/checkbox/checkbox_component.dart';
import 'package:payon/core/widgets/inputs/otp_field/otp_field_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class StepThreeOTP extends StatelessWidget {
  const StepThreeOTP({
    super.key,
    required this.termsAccepted,
    required this.onTermsChanged,
  });

  final bool termsAccepted;
  final ValueChanged<bool?> onTermsChanged;

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
                'Code expires in ',
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
          TextButtonComponent(onPressed: () {}, label: 'Resend Code'),
          CheckboxComponent(
            label: l10n.terms_and_conditions,
            value: termsAccepted,
            onChanged: onTermsChanged,
          ),
        ],
      ),
    );
  }
}
