import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/router/app_router.dart';
import 'package:payon/core/widgets/buttons/filled_button/filled_button_component.dart';
import 'package:payon/core/widgets/buttons/outlined_button/outlined_button_component.dart';
import 'package:payon/core/widgets/buttons/text_button/text_button_component.dart';
import 'package:payon/core/widgets/inputs/checkbox/checkbox_component.dart';
import 'package:payon/core/widgets/inputs/otp_field/otp_field_component.dart';
import 'package:payon/core/widgets/inputs/password_field/password_field_component.dart';

import 'package:payon/core/widgets/inputs/text_field/text_field_component.dart';
import 'package:payon/core/widgets/layout/spacing/spacing_component.dart';
import 'package:payon/core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final PageController _pageController = PageController();
  final TextEditingController _dateController = TextEditingController();

  int _currentPage = 0;
  bool _termsAccepted = false;

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() => _currentPage--);
  }

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go(AppRouter.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: PageController(),
              physics: const BouncingScrollPhysics(),
              slivers: [
                SidePageSliverAppBarComponent(
                  title: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Text(
                      _currentPage == 0
                          ? l10n.account_details
                          : (_currentPage == 1 ? 'KYC' : l10n.otp_code),
                      key: ValueKey<int>(_currentPage),
                    ),
                  ),
                  pinned: true,
                  expandedHeight: kToolbarHeight + AppConfig.padding * 2,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            activeDotColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            dotColor: Theme.of(
                              context,
                            ).colorScheme.outlineVariant,
                            dotHeight: 6,
                            dotWidth: 6,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: AppConfig.paddingQuarter,
                          ),
                          child: Text(
                            '${l10n.step} ${_currentPage + 1} ${l10n.off} 3',
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) =>
                        setState(() => _currentPage = index),
                    children: [
                      _buildStepOne(l10n),
                      _buildStepTwo(l10n),
                      _buildStepThree(l10n),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppConfig.paddingHalf),
            child: Row(
              children: [
                if (_currentPage > 0) ...[
                  Expanded(
                    child: OutlinedButtonComponent.icon(
                      label: l10n.back,
                      icon: Directionality.of(context) == TextDirection.rtl
                          ? Iconsax.arrow_right_3_copy
                          : Iconsax.arrow_left_2_copy,
                      onPressed: _previousPage,
                    ),
                  ),
                  SpacingComponent.horizontal(AppConfig.paddingHalf),
                ],
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: ScaleTransition(scale: animation, child: child),
                      );
                    },
                    child: FilledButtonComponent.icon(
                      key: ValueKey<int>(_currentPage),
                      label: _currentPage == 2
                          ? l10n.create_account
                          : l10n.next,
                      icon: _currentPage == 2
                          ? Iconsax.user_add_copy
                          : (Directionality.of(context) == TextDirection.rtl
                                ? Iconsax.arrow_left_2_copy
                                : Iconsax.arrow_right_3_copy),
                      onPressed: _nextPage,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepOne(AppLocalizations l10n) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: AppConfig.padding),
      child: Column(
        spacing: AppConfig.paddingHalf,
        crossAxisAlignment: CrossAxisAlignment.stretch,

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
              SpacingComponent.horizontal(AppConfig.paddingHalf),
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
        ],
      ),
    );
  }

  Widget _buildStepTwo(AppLocalizations l10n) {
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
            controller: _dateController,
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
                _dateController.text = date.toString().split(' ')[0];
                setState(() {});
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

  Widget _buildStepThree(AppLocalizations l10n) {
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
            value: _termsAccepted,
            onChanged: (val) {
              setState(() {
                _termsAccepted = val ?? false;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
