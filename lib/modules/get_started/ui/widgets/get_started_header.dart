import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({
    required this.currentPage,
    required this.pageController,
    required this.scrollController,
    super.key,
  });

  final int currentPage;
  final PageController pageController;
  final ScrollController scrollController;

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final colorScheme = Theme.of(context).colorScheme;

    final title = switch (currentPage) {
      0 => l10n.account_type,
      1 => l10n.account_details,
      2 => l10n.otp_code,
      3 => 'KYC',
      _ => '',
    };

    return SidePageSliverAppBarWithWavesComponent(
      scrollController: scrollController,
      expandedHeight: 180.h,
      title: title,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: ScrollingDotsEffect(
              activeDotColor: colorScheme.primary,
              dotColor: colorScheme.outlineVariant,
              dotHeight: 6,
              dotWidth: 6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppConfig.paddingQuarter,
            ),
            child: Text(
              '${l10n.step} ${currentPage + 1} ${l10n.off} 4',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
