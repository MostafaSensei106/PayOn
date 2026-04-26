import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/otp_field/otp_field_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ForgetPasswordPage extends HookWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final pageController = usePageController();
    final currentPage = useState(0);

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.forgot_password),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) => currentPage.value = index,
        children: [
          // Section 1: Email/Phone Input
          SingleChildScrollView(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.email_address,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppConfig.paddingHalf),
                Form(
                  child: Column(
                    children: [
                      TextFormFieldComponent(
                        label: l10n.email_address,
                        prefixIcon: Iconsax.sms_copy,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String p1) {},
                      ),
                      const SizedBox(height: AppConfig.padding * 2),
                      FilledButtonComponent(
                        label: l10n.send,
                        onPressed: () {
                          const HomeRoute().go(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  l10n.otp_code,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppConfig.paddingHalf),
                Text(
                  l10n.otp_message,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                Center(child: OtpFieldComponent(onCompleted: (code) {})),
                FilledButtonComponent(
                  label: l10n.confirm,
                  onPressed: () {
                    // Handle verification logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
