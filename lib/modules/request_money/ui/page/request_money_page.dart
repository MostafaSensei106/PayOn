import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../../home/logic/cubit/home_state.dart' as hs;
import '../../../home/logic/entitys/wallets_entity.dart';
import '../../../send_money/logic/cubit/user_favorites_cubit.dart';
import '../../../send_money/ui/page/send_money_page.dart';
import '../../../send_money/ui/widgets/receiver_selection_component.dart';
import '../../../send_money/ui/widgets/sender_account_selection_component.dart';
import '../../logic/cubit/request_money_cubit.dart';
import '../../logic/cubit/request_money_state.dart';
import '../widgets/amount_request_and_submit_component.dart';
import '../widgets/pending_requests_bottom_sheet_component.dart';
import '../widgets/request_money_summary_bottom_sheet.dart';

class RequestMoneyPage extends HookWidget {
  const RequestMoneyPage({this.walletIndex = 0, super.key});

  final int walletIndex;

  void _showPendingRequests(
    BuildContext context,
    dynamic l10n,
    String walletId,
  ) {
    final cubit = context.read<RequestMoneyCubit>();
    unawaited(
      context.showBottomSheetComponent<void>(
        title: 'Pending Requests',
        child: BlocProvider.value(
          value: cubit,
          child: PendingRequestsBottomSheetComponent(walletId: walletId),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scrollController = useScrollController();
    final selectedMethod = useState(SendMoneyMethod.phone);
    final targetSenderId = useState('');

    final homeState = getIt<HomeCubit>().state;
    final myWallets = homeState is hs.Success
        ? (homeState).wallets.wallets
        : <WalletItemEntity>[];

    final selectedWallet = useState<WalletItemEntity>(
      myWallets.isNotEmpty && walletIndex < myWallets.length
          ? myWallets[walletIndex]
          : const WalletItemEntity.placeholder(),
    );

    useEffect(() {
      unawaited(context.read<RequestMoneyCubit>().getPendingRequests());
      unawaited(context.read<UserFavoritesCubit>().getUserFavorites());
      return null;
    }, []);

    return Scaffold(
      body: BlocConsumer<RequestMoneyCubit, RequestMoneyState>(
        listener: (context, state) async {
          await state.whenOrNull(
            loading: (_) {
              context.dialog.showLoading();
            },
            checkWalletSuccess: (form, data) async {
              Navigator.pop(context); // Close loading
              targetSenderId.value = data.reciverId;
              unawaited(
                context.read<RequestMoneyCubit>().createTransactionDraft(
                  senderId: data.reciverId,
                  receiverId: selectedWallet.value.walletId,
                ),
              );
            },
            transactionDraftSuccess: (form, draft) async {
              Navigator.pop(context); // Close loading
              await context.showBottomSheetComponent<void>(
                title: l10n.transaction_details,
                child: BlocProvider.value(
                  value: context.read<RequestMoneyCubit>(),
                  child: RequestMoneySummaryBottomSheet(
                    draft: draft,
                    onConfirm: (pin) async {
                      await context
                          .read<RequestMoneyCubit>()
                          .confirmRequestMoney(
                            pin: pin,
                            walletId: selectedWallet.value.walletId,
                            draftIds: draft.draftIds,
                            senderId: targetSenderId.value,
                          );
                    },
                  ),
                ),
              );
            },
            requestSentSuccess: (form) {
              Navigator.pop(context); // Close summary
              Navigator.pop(context); // Close loading
              context.toast.showSuccess(context, l10n.success);
            },
            requestApprovedSuccess: (form) {
              Navigator.pop(context); // Close loading
              context.toast.showSuccess(context, l10n.success);
              unawaited(context.read<RequestMoneyCubit>().getPendingRequests());
            },
            pendingRequestsLoaded: (form, requests) {
              Navigator.pop(context); // Close loading
            },
            failure: (_, message) async {
              Navigator.pop(context); // Close loading/dialog
              await context.dialog.showError(title: l10n.error, error: message);
            },
          );
        },
        builder: (context, state) {
          return CustomScrollView(
            controller: scrollController,
            slivers: [
              SidePageSliverAppBarWithWavesComponent(
                scrollController: scrollController,
                title: l10n.request_money,
                actions: [
                  IconButtonComponent.filled(
                    icon: Iconsax.notification_bing_copy,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                    foregroundColor: Theme.of(
                      context,
                    ).colorScheme.onPrimaryContainer,
                    padding: 0,
                    onPressed: () => _showPendingRequests(
                      context,
                      l10n,
                      selectedWallet.value.walletId,
                    ),
                  ),
                ],
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConfig.padding,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    if (myWallets.isNotEmpty)
                      SenderAccountSelectionComponent(
                        selectedWallet: selectedWallet.value,
                        wallets: myWallets,
                        onWalletSelected: (wallet) =>
                            selectedWallet.value = wallet,
                        l10n: l10n,
                      ),
                    SizedBox(height: 24.h),
                    ReceiverSelectionComponent(
                      selectedMethod: selectedMethod.value,
                      onMethodChanged: (method) =>
                          selectedMethod.value = method,
                      onReceiverChanged: (val) => context
                          .read<RequestMoneyCubit>()
                          .onUserInfoChanged(val),
                      l10n: l10n,
                      initialValue: state.formState.userInfo.value,
                    ),
                    SizedBox(height: 16.h),
                    AmountRequestAndSubmitComponent(
                      onAmountChanged: (val) => context
                          .read<RequestMoneyCubit>()
                          .onAmountChanged(val),
                      onDescriptionChanged: (val) => context
                          .read<RequestMoneyCubit>()
                          .onDescriptionChanged(val),
                      onSubmit: () {
                        unawaited(
                          context.read<RequestMoneyCubit>().checkWallet(),
                        );
                      },
                      l10n: l10n,
                    ),
                    SizedBox(height: 32.h),
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
