import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../logic/entitys/wallets_entity.dart';
import '../widgets/account_balance_card.dart';
import '../widgets/latest_transactions_section.dart';
import '../widgets/quick_action_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final cardController = PageController();
    final scrollController = ScrollController();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => context.read<HomeCubit>().getWallets(),
        child: CustomScrollView(
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          slivers: [
            SliverAppBarWithWavesComponent(
              scrollController: scrollController,
              expandedHeight: 320.h,
              leading: Padding(
                padding: const EdgeInsets.all(AppConfig.paddingHalf),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      AppConfig.outBorderRadius,
                    ),
                    onTap: () async {
                      unawaited(HapticFeedback.vibrate());
                      await const ProfileRoute().push<void>(context);
                    },
                    child: const AvatarComponent(
                      imageUrl:
                          'https://hips.hearstapps.com/hmg-prod/images/demon-slayer-kimetsu-no-yaiba-646f30ac5433e.jpg',
                    ),
                  ),
                ),
              ),
              title: l10n.home,
              actions: [
                IconButtonComponent.filled(
                  icon: Iconsax.notification_copy,
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  foregroundColor: Theme.of(
                    context,
                  ).colorScheme.onPrimaryContainer,
                  padding: 0,
                  onPressed: () =>
                      const NotificationsRoute().push<void>(context),
                ),
              ],
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(
                  top: kToolbarHeight + AppConfig.padding * 2,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            success:
                                (
                                  wallets,
                                  transactions,
                                  isTransactionsLoading,
                                  currentFilters,
                                ) => PageView.builder(
                                  controller: cardController,
                                  itemCount: wallets.wallets.length,
                                  itemBuilder: (final context, final index) =>
                                      AccountBalanceCard(
                                        w: wallets.wallets[index],
                                      ),
                                ),
                            loading: () => const Skeletonizer(
                              child: AccountBalanceCard(
                                w: WalletItemEntity.placeholder(),
                              ),
                            ),
                            failure: (message) => Center(child: Text(message)),
                            orElse: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: AppConfig.paddingHalf),
                    BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          success:
                              (
                                wallets,
                                transactions,
                                isTransactionsLoading,
                                currentFilters,
                              ) => SmoothPageIndicator(
                                controller: cardController,
                                count: wallets.wallets.length,
                                effect: ScrollingDotsEffect(
                                  dotHeight: 6,
                                  dotWidth: 6,
                                  activeDotColor: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                              ),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                    const SizedBox(height: AppConfig.paddingHalf),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        QuickActionItem(
                          icon: Iconsax.send_sqaure_2_copy,
                          label: l10n.send,
                          onTap: () =>
                              const SendMoneyRoute().push<void>(context),
                        ),
                        QuickActionItem(
                          icon: Iconsax.add_circle_copy,
                          label: l10n.deposit,
                          onTap: () {},
                        ),
                        QuickActionItem(
                          icon: Iconsax.receive_square_2_copy,
                          label: l10n.request,
                          onTap: () =>
                              const RequestMoneyRoute().push<void>(context),
                        ),
                        QuickActionItem(
                          icon: Iconsax.scan_barcode_copy,
                          label: l10n.scan,
                          onTap: () =>
                              const ScanQrCodeRoute().push<void>(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const LatestTransactionsSection(),
          ],
        ),
      ),
    );
  }
}
