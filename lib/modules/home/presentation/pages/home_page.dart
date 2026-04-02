import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/widgets/buttons/icon_button/icon_button_component.dart';
import 'package:payon/core/widgets/display/avatar/avatar_component.dart';
import 'package:payon/core/widgets/slivers/sliver_app_bar/sliver_app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';
import 'package:payon/modules/home/data/models/account_model.dart';
import 'package:payon/modules/home/presentation/widgets/account_balance_card.dart';
import 'package:payon/modules/home/presentation/widgets/latest_transactions_section.dart';
import 'package:payon/modules/home/presentation/widgets/quick_action_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final PageController cardController = PageController();

    final List<AccountModel> accounts = [
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
        currencyName: l10n.euro,
        symbol: 'EUR',
        balance: '940.00',
        accountId: 'ID: 2024-EUR-44',
        countryCode: 'FR',
      ),
      AccountModel(
        currencyName: l10n.japanese_yen,
        symbol: 'JPY',
        balance: '150,000',
        accountId: 'ID: 2024-JPY-09',
        countryCode: 'JP',
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarComponent(
            expandedHeight: 280.h,

            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AvatarComponent(),
            ),
            title: Text(
              l10n.home,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButtonComponent(
                icon: Iconsax.notification_copy,
                onPressed: () {},
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                  top: kToolbarHeight + AppConfig.padding * 2,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: cardController,
                        itemCount: accounts.length,
                        itemBuilder: (context, index) {
                          return AccountBalanceCard(account: accounts[index]);
                        },
                      ),
                    ),
                    SizedBox(height: AppConfig.paddingHalf),
                    SmoothPageIndicator(
                      controller: cardController,
                      count: accounts.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 6.h,
                        dotWidth: 6.w,
                        activeDotColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: AppConfig.paddingHalf),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(
                    AppConfig.outBorderRadius,
                  ),
                ),
                child: Row(
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
              ),
            ),
          ),
          const LatestTransactionsSection(),
        ],
      ),
    );
  }
}
