import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_constants.dart';
import 'package:payon/core/widgets/navigation/app_bar_component.dart';
import 'package:payon/core/widgets/buttons/filled_button_component.dart';
import 'package:payon/core/widgets/buttons/text_button_component.dart';
import 'package:payon/core/widgets/inputs/text_field_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBarComponent(title: l10n.login),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppConstants.extraLargeSpacing.h),
            Text(
              l10n.welcome_back,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: AppConstants.smallSpacing.h),
            Text(
              l10n.login_subtitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
            ),
            SizedBox(height: AppConstants.extraLargeSpacing.h),
            TextFormFieldComponent(
              label: l10n.email_address,
              prefixIcon: Iconsax.sms,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: AppConstants.screenPadding.h),
            TextFormFieldComponent(
              label: l10n.password,
              prefixIcon: Iconsax.lock,
              obscureText: true,
              suffixIcon: const Icon(Iconsax.eye),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButtonComponent(
                label: l10n.forgot_password,
                onPressed: () {},
              ),
            ),
            SizedBox(height: AppConstants.largeSpacing.h),
            FilledButtonComponent(
              label: l10n.login,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
