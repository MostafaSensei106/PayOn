import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({
    super.key,
    required this.currentPage,
    required this.pageController,
  });

  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SidePageSliverAppBarComponent(
      title: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Text(
          currentPage == 0
              ? l10n.account_details
              : (currentPage == 1 ? 'KYC' : l10n.otp_code),
          key: ValueKey<int>(currentPage),
        ),
      ),
      pinned: true,
      expandedHeight: kToolbarHeight + AppConfig.padding * 2,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ScrollingDotsEffect(
                activeDotColor: Theme.of(context).colorScheme.primary,
                dotColor: Theme.of(context).colorScheme.outlineVariant,
                dotHeight: 6,
                dotWidth: 6,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: AppConfig.paddingQuarter),
              child: Text(
                '${l10n.step} ${currentPage + 1} ${l10n.off} 3',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
