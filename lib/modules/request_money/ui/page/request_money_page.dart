import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../../home/logic/cubit/home_state.dart' as hs;
import '../../../home/logic/entitys/wallets_entity.dart';
import '../../../send_money/ui/page/send_money_page.dart';
import '../../../send_money/ui/widgets/receiver_selection_component.dart';
import '../../../send_money/ui/widgets/sender_account_selection_component.dart';
import '../../logic/cubit/request_money_cubit.dart';
import '../widgets/pending_requests_bottom_sheet_component.dart';

class RequestMoneyPage extends HookWidget {
  const RequestMoneyPage({this.walletIndex = 0, super.key});

  final int walletIndex;

  void _showPendingRequests(BuildContext context, dynamic l10n) {
    final cubit = context.read<RequestMoneyCubit>();
    unawaited(
      context.showBottomSheetComponent<void>(
        title: 'Pending Requests',
        child: BlocProvider.value(
          value: cubit,
          child: const PendingRequestsBottomSheetComponent(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();
    final selectedMethod = useState(SendMoneyMethod.phone);
    final receiverValue = useState('');
    final amountValue = useState('');
    final descriptionValue = useState('');

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
      // ignore: discarded_futures
      context.read<RequestMoneyCubit>().getPendingRequests();
      return null;
    }, []);

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SidePageSliverAppBarWithWavesComponent(
            scrollController: scrollController,
            title: l10n.request_money,
            actions: [
              IconButtonComponent.filled(
                icon: Iconsax.notification_bing_copy,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                foregroundColor: Theme.of(
                  context,
                ).colorScheme.onPrimaryContainer,
                padding: 0,
                onPressed: () => _showPendingRequests(context, l10n),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                if (myWallets.isNotEmpty)
                  SenderAccountSelectionComponent(
                    selectedWallet: selectedWallet.value,
                    wallets: myWallets,
                    onWalletSelected: (wallet) => selectedWallet.value = wallet,
                    l10n: l10n,
                  ),
                SizedBox(height: 24.h),
                ReceiverSelectionComponent(
                  selectedMethod: selectedMethod.value,
                  onMethodChanged: (method) => selectedMethod.value = method,
                  onReceiverChanged: (val) => receiverValue.value = val,
                  l10n: l10n,
                  initialValue: receiverValue.value,
                ),
                SizedBox(height: 16.h),
                Column(
                  children: [
                    TextFormFieldComponent(
                      label: l10n.amount,
                      hintText: l10n.amount_hint,
                      prefixIcon: Iconsax.money_send_copy,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      onChanged: (val) => amountValue.value = val,
                    ),
                    SizedBox(height: 16.h),
                    TextFormFieldComponent(
                      label: l10n.description,
                      hintText: l10n.description_hint,
                      prefixIcon: Iconsax.document_text_copy,
                      onChanged: (val) => descriptionValue.value = val,
                    ),
                    SizedBox(height: 32.h),
                    FilledButtonComponent.icon(
                      icon: Iconsax.receive_square_copy,
                      label: l10n.request,
                      onPressed: () {
                        // Backend API for creating a request is not yet implemented
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Request sent successfully!'),
                          ),
                        );
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 32.h),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
