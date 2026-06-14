import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/base_use_case.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';
import '../../../get_started/logic/use_cases/get_account_types_use_case.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';
import '../../../profile/logic/cubit/user_profile_state.dart' as profile;
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../logic/entitys/wallets_entity.dart';
import '../widgets/account_balance_card.dart';
import '../widgets/latest_transactions_section.dart';
import '../widgets/quick_action_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _onAddWallet(BuildContext context) async {
    final homeCubit = context.read<HomeCubit>();
    final userProfileState = context.read<UserProfileCubit>().state;

    if (userProfileState is! profile.Success) {
      await context.dialog.showError(
        title: context.localeKeys.error,
        error: context.localeKeys.please_wait_profile_load,
      );
      return;
    }

    context.dialog.showLoading();
    final result = await getIt<GetAccountTypesUseCase>().call(const NoParams());

    if (!context.mounted) return;
    context.pop(); // Close loading

    await result.fold(
      onSuccess: (accountTypes) async {
        final selectedType = await context.showBottomSheetComponent<int>(
          title: context.localeKeys.account_type,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(accountTypes.items.length, (index) {
                final type = accountTypes.items[index];
                final isFirst = index == 0;
                final isLast = index == accountTypes.items.length - 1;
                final leading = type.parentId == 7
                    ? Iconsax.shop_copy
                    : Iconsax.user_copy;
                void onTap() => context.pop(type.id);

                if (isFirst) {
                  return ListTileIconComponent.top(
                    title: type.type,
                    leading: leading,
                    onTap: onTap,
                  );
                } else if (isLast) {
                  return ListTileIconComponent.bottom(
                    title: type.type,
                    leading: leading,
                    onTap: onTap,
                  );
                } else {
                  return ListTileIconComponent.middle(
                    title: type.type,
                    leading: leading,
                    onTap: onTap,
                  );
                }
              }),
              SizedBox(height: 16.h),
            ],
          ),
        );

        if (selectedType != null && context.mounted) {
          final addressController = TextEditingController();
          final phoneController = TextEditingController(
            text: userProfileState.data.phone,
          );

          final resultData = await context
              .showBottomSheetComponent<Map<String, String>>(
                title: context.localeKeys.complete_your_wallet_profile,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.localeKeys.verify_details_proceed,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 24.h),
                      const SizedBox(height: AppConfig.padding),
                      TextFormFieldComponent(
                        controller: phoneController,
                        label: context.localeKeys.phone_number,
                        prefixIcon: Iconsax.call_copy,
                        keyboardType: TextInputType.phone,
                        onChanged: (String p1) {},
                      ),
                      const SizedBox(height: AppConfig.padding),
                      TextFormFieldComponent(
                        controller: addressController,
                        label: context.localeKeys.residential_address,
                        hintText: context.localeKeys.enter_residential_address,
                        prefixIcon: Iconsax.map_copy,
                        onChanged: (String p1) {},
                      ),
                      SizedBox(height: 32.h),
                      FilledButtonComponent(
                        label: context.localeKeys.add_wallet,
                        onPressed: () => context.pop({
                          'address': addressController.text,
                          'phone': phoneController.text,
                        }),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).viewInsets.bottom + 16.h,
                      ),
                    ],
                  ),
                ),
              );

          if (resultData != null &&
              resultData['address']!.isNotEmpty &&
              resultData['phone']!.isNotEmpty &&
              context.mounted) {
            context.dialog.showLoading();
            final accountId = await homeCubit.createAccount(
              accountTypeId: selectedType,
              address: resultData['address']!,
              phoneNumber: resultData['phone']!,
              profile: userProfileState.data,
            );

            if (context.mounted) {
              context.pop(); // Close loading
              if (accountId != null && accountId.isNotEmpty) {
                unawaited(CreateWalletRoute(accountId: accountId).push<void>(context));
              }
            }
          }
        }
      },
      onFailure: (error) async =>
          context.dialog.showError(title: context.localeKeys.error, error: error.message),
    );
  }

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
                    child:
                        BlocBuilder<UserProfileCubit, profile.UserProfileState>(
                          builder: (context, state) {
                            final imageUrl = state.maybeWhen(
                              success: (data) => data.imageUrl,
                              orElse: () => null,
                            );
                            return AvatarComponent(imageUrl: imageUrl ?? '');
                          },
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
                                  requiredFiles,
                                  kycFiles,
                                  isUploading,
                                  newAccountId,
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
                                requiredFiles,
                                kycFiles,
                                isUploading,
                                newAccountId,
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
                          icon: Iconsax.wallet_add_copy,
                          label: context.localeKeys.add_wallet,
                          onTap: () => _onAddWallet(context),
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
