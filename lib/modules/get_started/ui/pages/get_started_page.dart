// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/routes_names.dart';
import '../../logic/cubit/otp/otp_cubit.dart';
import '../../logic/cubit/otp/otp_state.dart' as otp;
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/cubit/register/register_state.dart';
import '../widgets/get_started_header.dart';
import '../widgets/get_started_navigation.dart';
import '../widgets/step_five_create_wallet.dart';
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

    void goToPage(int targetPage) {
      unawaited(
        pageController.animateToPage(
          targetPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
      currentPage.value = targetPage;
      context.read<RegisterCubit>().setStep(targetPage);
    }

    void previousPage() {
      FocusScope.of(context).unfocus();
      goToPage(currentPage.value - 1);
    }

    Future<void> nextPage() async {
      FocusScope.of(context).unfocus();
      final cubit = context.read<RegisterCubit>();

      if (currentPage.value == 0) {
        // Step 1: Account Type → go to Step 2: Registration
        if (registerForm.accountType == null) return;
        goToPage(1);
        unawaited(cubit.getCountries());
      } else if (currentPage.value == 1) {
        // Step 2: Registration Form → Register + CreateAccount + SendOTP
        if (!registerForm.isValid ||
            !termsAccepted.value ||
            !privacyAccepted.value) {
          return;
        }
        await cubit.register();
      } else if (currentPage.value == 2) {
        // Step 3: OTP — handled by OtpCubit listener
      } else if (currentPage.value == 3) {
        // Step 4: KYC Upload
        await cubit.uploadKYCFiles(registerForm.accountId);
      } else if (currentPage.value == 4) {
        // Step 5: Wallet Creation
        if (registerForm.walletStep == 0) {
          await cubit.createWallet();
        } else {
          await cubit.createWalletPin();
        }
      }
    }

    return MultiBlocListener(
      listeners: [
        BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) async {
            await state.whenOrNull(
              loading: (form) {
                context.dialog.showLoading();
              },
              registerSuccess: (form, data) async {
                // Register + CreateAccount + SendOTP succeeded → go to OTP
                if (Navigator.of(context).canPop()) context.pop();
                goToPage(2);
              },
              kycUploadSuccess: (form) async {
                // KYC uploaded → go to Create Wallet step
                if (Navigator.of(context).canPop()) context.pop();
                goToPage(4);
                unawaited(context.read<RegisterCubit>().getCurrencies());
              },
              ocrSuccess: (form) async {
                if (Navigator.of(context).canPop()) context.pop();
              },
              walletCreated: (form) async {
                // Wallet created → stays on same page but switches to PIN sub-step
                if (Navigator.of(context).canPop()) context.pop();
              },
              pinCreated: (form) async {
                // PIN created → Registration complete! Navigate to home
                if (Navigator.of(context).canPop()) context.pop();
                await context.dialog.showInfo(
                  title: 'Success',
                  body:
                      'Your account and wallet have been created successfully!',
                );
                if (context.mounted) {
                  context.go(RoutesNames.home);
                }
              },
              createAccountSuccess: (form, data) async {
                if (Navigator.of(context).canPop()) context.pop();
              },
              getCountriesSuccess: (form, countries) async {
                if (Navigator.of(context).canPop()) context.pop();
              },
              getRequiredFilesSuccess: (form, files) async {
                if (Navigator.of(context).canPop()) context.pop();
              },
              currenciesLoaded: (form) async {
                if (Navigator.of(context).canPop()) context.pop();
              },
              failure: (form, error) async {
                if (Navigator.of(context).canPop()) context.pop();

                await context.dialog.showError(
                  title: context.localeKeys.error,
                  error: error,
                );
              },
            );
          },
        ),
        BlocListener<OtpCubit, otp.OtpState>(
          listener: (context, state) async {
            if (state is otp.Success) {
              // OTP verified → go to KYC
              if (Navigator.of(context).canPop()) context.pop();
              unawaited(context.read<RegisterCubit>().getRequiredFiles());
              goToPage(3);
            } else if (state is otp.Loading) {
              context.dialog.showLoading();
            } else if (state is otp.Failure) {
              context.pop();
              await context.dialog.showError(
                title: context.localeKeys.error,
                error: state.error,
              );
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
                    const StepFiveCreateWallet(),
                  ],
                ),
              ),
            ),
            GetStartedNavigation(
              currentPage: currentPage.value,
              onPrevious: previousPage,
              onNext: nextPage,
              isEnabled: registerForm.isValid && registerState is! Loading,
            ),
          ],
        ),
      ),
    );
  }
}
