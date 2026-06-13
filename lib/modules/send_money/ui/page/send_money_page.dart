import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../../home/logic/cubit/home_state.dart';
import '../../../home/logic/entitys/wallets_entity.dart';
import '../../logic/cubit/send_money_cubit.dart';
import '../../logic/cubit/send_money_state.dart';
import '../../logic/cubit/user_favorites_cubit.dart';
import '../widgets/amount_input_and_submit_component.dart';
import '../widgets/receiver_selection_component.dart';
import '../widgets/send_money_summary_bottom_sheet.dart';
import '../widgets/sender_account_selection_component.dart';

enum SendMoneyMethod { phone, ipa }

class SendMoneyPage extends HookWidget {
  const SendMoneyPage({this.walletIndex = 0, super.key});

  final int walletIndex;

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final selectedMethod = useState(SendMoneyMethod.phone);
    final scrollController = useScrollController();

    // Get wallets from HomeCubit
    final homeState = getIt<HomeCubit>().state;
    final myWallets = homeState.maybeWhen(
      success: (wallets, transactions, isTransactionsLoading, currentFilters) =>
          wallets.wallets,
      orElse: () => <WalletItemEntity>[],
    );

    final selectedWallet = useState<WalletItemEntity>(
      myWallets.isNotEmpty && walletIndex < myWallets.length
          ? myWallets[walletIndex]
          : const WalletItemEntity.placeholder(),
    );

    useEffect(() {
      unawaited(context.read<UserFavoritesCubit>().getUserFavorites());
      return null;
    }, []);

    return Scaffold(
      body: BlocConsumer<SendMoneyCubit, SendMoneyState>(
        listener: (context, state) async {
          await state.whenOrNull(
            loading: (_) {
              context.dialog.showLoading();
            },
            success: (form, data) async {
              Navigator.pop(context);
              unawaited(
                context.read<SendMoneyCubit>().createTransactionDraft(
                  senderId: selectedWallet.value.walletId,
                  receiverId: data.reciverId,
                  isTransactionByPhone:
                      selectedMethod.value == SendMoneyMethod.phone,
                ),
              );
            },
            transactionDraftSuccess: (form, draft) async {
              Navigator.pop(context);
              await context.showBottomSheetComponent<void>(
                title: l10n.transaction_details,
                child: BlocProvider.value(
                  value: context.read<SendMoneyCubit>(),
                  child: SendMoneySummaryBottomSheet(
                    draft: draft,
                    onConfirm: (pin) async {
                      await context.read<SendMoneyCubit>().confirmTransaction(
                        pin: pin,
                        walletId: selectedWallet.value.walletId,
                        draftIds: draft.draftIds,
                      );
                    },
                  ),
                ),
              );
            },
            transactionSaved: (form, data) {
              Navigator.pop(context);
              Navigator.pop(context);
              context.toast.showSuccess(context, l10n.success);
            },
            failure: (_, message) async {
              Navigator.pop(context);
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
                title: l10n.send_money,
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
                      onReceiverChanged: (val) =>
                          context.read<SendMoneyCubit>().onUserInfChanged(val),
                      l10n: l10n,
                    ),
                    SizedBox(height: 16.h),
                    AmountInputAndSubmitComponent(
                      onAmountChanged: (val) =>
                          context.read<SendMoneyCubit>().onAmountChanged(val),
                      onDescriptionChanged: (val) => context
                          .read<SendMoneyCubit>()
                          .onDescriptionChanged(val),
                      onSubmit: () {
                        unawaited(context.read<SendMoneyCubit>().checkWallet());
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
