import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../data/models/account_model.dart';
import '../widgets/account_balance_card.dart';
import '../widgets/latest_transactions_section.dart';
import '../widgets/quick_action_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cardController = PageController();

    final accounts = <AccountModel>[
      AccountModel(
        currencyName: l10n.egyptian_pound,
        symbol: 'EGP',
        balance: '45,250.00',
        accountId: 'ID: 2024-EGP-88',
        countryCode: 'EG',
      ),
      AccountModel(
        currencyName: l10n.us_dollar,
        symbol: 'USD',
        balance: '1,280.50',
        accountId: 'ID: 2024-USD-12',
        countryCode: 'US',
      ),
      AccountModel(
        currencyName: l10n.saudi_riyal,
        symbol: 'SAR',
        balance: '15,000.00',
        accountId: 'ID: 2024-SAR-44',
        countryCode: 'SA',
      ),
      AccountModel(
        currencyName: l10n.uae_dirham,
        symbol: 'AED',
        balance: '8,400.00',
        accountId: 'ID: 2024-AED-55',
        countryCode: 'AE',
      ),
      AccountModel(
        currencyName: l10n.british_pound,
        symbol: 'GBP',
        balance: '650.00',
        accountId: 'ID: 2024-GBP-66',
        countryCode: 'GB',
      ),
      AccountModel(
        currencyName: l10n.japanese_yen,
        symbol: 'JPY',
        balance: '150,000,000.00',
        accountId: 'ID: 2024-JPY-09',
        countryCode: 'JP',
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        controller: ScrollController(),
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SliverAppBarComponent(
            expandedHeight: 350.h,
            pinned: true,
            floating: true,
            leading: Padding(
              padding: const EdgeInsets.all(AppConfig.paddingHalf),
              child: Hero(
                tag: 'profile',
                flightShuttleBuilder:
                    (
                      flightContext,
                      animation,
                      flightDirection,
                      fromHeroContext,
                      toHeroContext,
                    ) => AnimatedBuilder(
                        animation: animation,
                        builder: (context, child) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Tween<double>(
                                  begin: 100,
                                  end: 0,
                                ).evaluate(animation),
                              ),
                            ),
                            child: toHeroContext.widget,
                          ),
                      ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      AppConfig.outBorderRadius,
                    ),
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      context.push(AppRouter.profile);
                    },
                    child: const AvatarComponent(
                      imageUrl:
                          'https://media.licdn.com/dms/image/v2/D5603AQHpMGFlYFIAyw/profile-displayphoto-scale_400_400/B56ZnjHIJxHIAg-/0/1760451933899?e=1776902400&v=beta&t=ClsT0ppYA0_8z9ViCSbiS4FG81mCgMkabjoNBHSN1hc',
                    ),
                  ),
                ),
              ),
            ),
            title: Text(l10n.home),
            actions: [
              IconButtonComponent.filled(
                icon: Iconsax.notification_copy,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                foregroundColor: Theme.of(
                  context,
                ).colorScheme.onPrimaryContainer,
                onPressed: () {},
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(
                  top: kToolbarHeight + AppConfig.padding * 2,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: cardController,
                        itemCount: accounts.length,
                        itemBuilder: (context, index) => AccountBalanceCard(account: accounts[index]),
                      ),
                    ),
                    const SizedBox(height: AppConfig.paddingHalf),
                    SmoothPageIndicator(
                      controller: cardController,
                      count: accounts.length,
                      effect: ScrollingDotsEffect(
                        dotHeight: 6,
                        dotWidth: 6,
                        activeDotColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: AppConfig.paddingHalf),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        QuickActionItem(
                          icon: Iconsax.send_1_copy,
                          label: l10n.send,
                          onTap: () {},
                        ),
                        QuickActionItem(
                          icon: Iconsax.receive_square_2_copy,
                          label: l10n.request,
                          onTap: () {},
                        ),
                        QuickActionItem(
                          icon: Iconsax.scan_barcode_copy,
                          label: l10n.scan,
                          onTap: () {},
                        ),
                        QuickActionItem(
                          icon: Iconsax.more_copy,
                          label: l10n.more,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const LatestTransactionsSection(),
        ],
      ),
    );
  }
}
