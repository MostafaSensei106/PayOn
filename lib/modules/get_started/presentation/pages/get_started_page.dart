import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payon/core/router/app_router.dart';
import 'package:payon/modules/get_started/presentation/widgets/get_started_header.dart';
import 'package:payon/modules/get_started/presentation/widgets/get_started_navigation.dart';
import 'package:payon/modules/get_started/presentation/widgets/step_one_account_details.dart';
import 'package:payon/modules/get_started/presentation/widgets/step_three_otp.dart';
import 'package:payon/modules/get_started/presentation/widgets/step_two_kyc.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: PageController(),
              physics: const BouncingScrollPhysics(),
              slivers: [
                GetStartedHeader(
                  currentPage: _currentPage,
                  pageController: _pageController,
                ),
                SliverFillRemaining(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (index) =>
                        setState(() => _currentPage = index),

                    children: [
                      const StepOneAccountDetails(),
                      StepTwoKYC(dateController: _dateController),
                      StepThreeOTP(
                        termsAccepted: _termsAccepted,
                        onTermsChanged: (val) {
                          setState(() {
                            _termsAccepted = val ?? false;
                          });
                        },
                      ),
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
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _dateController.dispose();
    super.dispose();
  }
}
