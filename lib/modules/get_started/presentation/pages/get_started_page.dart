import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/app_router.dart';
import '../widgets/get_started_header.dart';
import '../widgets/get_started_navigation.dart';
import '../widgets/step_one_account_details.dart';
import '../widgets/step_three_otp.dart';
import '../widgets/step_two_kyc.dart';

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
  bool _privacyAccepted = false;
  bool _allAccepted = false;

  void _previousPage() {
    FocusScope.of(context).unfocus();
    unawaited(
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ),
    );
    setState(() => _currentPage--);
  }

  void _nextPage() {
    FocusScope.of(context).unfocus();
    if (_currentPage < 2) {
      unawaited(
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
    } else {
      context.go(AppRouter.home);
    }
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
    body: Column(
      children: [
        Expanded(
          child: CustomScrollView(
            controller: PageController(),
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
              GetStartedHeader(
                currentPage: _currentPage,
                pageController: _pageController,
              ),
              SliverFillRemaining(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (final index) =>
                      setState(() => _currentPage = index),

                  children: [
                    StepOneAccountDetails(
                      termsAccepted: _termsAccepted,
                      onTermsChanged: (final val) {
                        setState(() {
                          _termsAccepted = val ?? false;
                          _allAccepted = _termsAccepted && _privacyAccepted;
                        });
                      },
                      privacyAccepted: _privacyAccepted,
                      onPrivacyChanged: (final val) {
                        setState(() {
                          _privacyAccepted = val ?? false;
                          _allAccepted = _termsAccepted && _privacyAccepted;
                        });
                      },
                      allAccepted: _allAccepted,
                      onAllChanged: (final val) {
                        setState(() {
                          _allAccepted = val ?? false;
                          _termsAccepted = _allAccepted;
                          _privacyAccepted = _allAccepted;
                        });
                      },
                    ),
                    StepTwoKYC(dateController: _dateController),
                    const StepThreeOTP(),
                  ],
                ),
              ),
            ],
          ),
        ),
        GetStartedNavigation(
          currentPage: _currentPage,
          onPrevious: _previousPage,
          onNext: _nextPage,
          isEnabled: _currentPage != 0 || (_termsAccepted && _privacyAccepted),
        ),
      ],
    ),
  );

  @override
  void dispose() {
    _pageController.dispose();
    _dateController.dispose();
    super.dispose();
  }
}
