import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/toast/base_toast_service.dart';
import '../../logic/cubit/otp/otp_cubit.dart';
import '../../logic/cubit/otp/otp_state.dart' as otp;
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

    final registerState = context.watch<RegisterCubit>().state;
    final registerForm = registerState.form;

    void previousPage() {
      FocusScope.of(context).unfocus();
      final targetPage = currentPage.value - 1;
      unawaited(
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
      currentPage.value = targetPage;
      context.read<RegisterCubit>().setStep(targetPage);
    }

    Future<void> nextPage() async {
      FocusScope.of(context).unfocus();
      final cubit = context.read<RegisterCubit>();

      if (currentPage.value == 0) {
        if (registerForm.accountType == null) return;
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        cubit.setStep(1);
      } else if (currentPage.value == 1) {
        if (!registerForm.isValid ||
            !termsAccepted.value ||
            !privacyAccepted.value)
          return;
        await cubit.register();
      } else if (currentPage.value == 2) {
        // OTP logic usually verifies itself and moves forward or we move forward on success
        // But if user clicks 'Next' manually (if enabled), we could try to verify or just wait for cubit
      } else if (currentPage.value == 3) {
        // KYC Upload
        const LoginRoute().go(context);
      }
    }

    return MultiBlocListener(
      listeners: [
        BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) {
            state.whenOrNull(
              registerSuccess: (form, data) async {
                await context.read<RegisterCubit>().createAccount();
              },
              createAccountSuccess: (form, data) {
                final targetPage = 2;
                pageController.animateToPage(
                  targetPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                context.read<RegisterCubit>().setStep(targetPage);
              },
              getRequiredFilesSuccess: (form, files) {
                final targetPage = 3;
                pageController.animateToPage(
                  targetPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                context.read<RegisterCubit>().setStep(targetPage);
              },
              failure: (form, error) {
                getIt<BaseToastService>().showError(context, error);
              },
            );
          },
        ),
        BlocListener<OtpCubit, otp.OtpState>(
          listener: (context, state) async {
            if (state is otp.Success) {
              await context.read<RegisterCubit>().getRequiredFiles();
            } else if (state is otp.Failure) {
              getIt<BaseToastService>().showError(context, state.error);
            }
          },
        ),
      ],
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
                      dateController: dateController,
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
                    const StepThreeOTP(),
                    const StepTwoKYC(),
                  ],
                ),
              ),
            ),
            GetStartedNavigation(
              currentPage: currentPage.value,
              onPrevious: previousPage,
              onNext: nextPage,
              isEnabled: registerForm.isValid && !(registerState is Loading),
            ),
          ],
        ),
      ),
    );
  }
}
