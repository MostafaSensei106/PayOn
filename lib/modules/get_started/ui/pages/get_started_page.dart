import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/app_router.dart';
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/cubit/register/register_state.dart';
import '../widgets/get_started_header.dart';
import '../widgets/get_started_navigation.dart';
import '../widgets/step_one_account_details.dart';
import '../widgets/step_one_account_type.dart';
import '../widgets/step_three_otp.dart';
import '../widgets/step_two_kyc.dart';

class GetStartedPage extends HookWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final scrollController = useScrollController();
    final dateController = useTextEditingController();

    final currentPage = useState(0);
    final termsAccepted = useState(false);
    final privacyAccepted = useState(false);
    final allAccepted = useState(false);

    final registerForm = context.watch<RegisterCubit>().state.form;

    void previousPage() {
      FocusScope.of(context).unfocus();
      unawaited(
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
      currentPage.value--;
    }

    void nextPage() {
      FocusScope.of(context).unfocus();
      if (currentPage.value < 3) {
        // Validation before moving to next page
        if (currentPage.value == 0 && registerForm.accountType == null) {
          return;
        }
        if (currentPage.value == 1 && !registerForm.isValid) {
          // If we want to be strict, but for now we let it pass if terms are accepted
          if (!termsAccepted.value || !privacyAccepted.value) return;
        }

        if (currentPage.value == 2) {
          // Trigger Registration when moving to OTP step
          context.read<RegisterCubit>().register();
        }

        unawaited(
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          ),
        );
      } else {
        context.go(AppRouter.home);
      }
    }

    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (form, data) {
            // If registration successful, maybe send OTP automatically
            // context.read<OtpCubit>().sendOTP();
          },
          failure: (form, error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
          },
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: NestedScrollView(
                controller: scrollController,
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    GetStartedHeader(
                      scrollController: scrollController,
                      currentPage: currentPage.value,
                      pageController: pageController,
                    ),
                  ];
                },
                body: PageView(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (final index) => currentPage.value = index,
                  children: [
                    const StepOneAccountType(),
                    StepOneAccountDetails(
                      termsAccepted: termsAccepted.value,
                      onTermsChanged: (final val) {
                        termsAccepted.value = val ?? false;
                        allAccepted.value =
                            termsAccepted.value && privacyAccepted.value;
                      },
                      privacyAccepted: privacyAccepted.value,
                      onPrivacyChanged: (final val) {
                        privacyAccepted.value = val ?? false;
                        allAccepted.value =
                            termsAccepted.value && privacyAccepted.value;
                      },
                      allAccepted: allAccepted.value,
                      onAllChanged: (final val) {
                        allAccepted.value = val ?? false;
                        termsAccepted.value = allAccepted.value;
                        privacyAccepted.value = allAccepted.value;
                      },
                    ),
                    StepTwoKYC(dateController: dateController),
                    const StepThreeOTP(),
                  ],
                ),
              ),
            ),
            GetStartedNavigation(
              currentPage: currentPage.value,
              onPrevious: previousPage,
              onNext: nextPage,
              isEnabled:
                  (currentPage.value == 0 &&
                      registerForm.accountType != null) ||
                  (currentPage.value == 1 &&
                      termsAccepted.value &&
                      privacyAccepted.value) ||
                  (currentPage.value == 2) ||
                  (currentPage.value == 3),
            ),
          ],
        ),
      ),
    );
  }
}
