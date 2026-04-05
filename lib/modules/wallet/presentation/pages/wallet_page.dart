import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';
import '../widget/payment_methods.dart';

class WalletPage extends HookWidget {
  const WalletPage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SliverAppBarWithWavesComponent(
            scrollController: scrollController,
            expandedHeight: 320.h,
            title: l10n.wallet,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(
                top: kToolbarHeight + AppConfig.padding * 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButtonComponent(label: '', onPressed: () {}),
                ],
              ),
            ),
          ),
          const PaymentMethods(),
        ],
      ),
    );
  }
}
