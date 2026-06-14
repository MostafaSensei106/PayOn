import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/router/routes_names.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/feedback/dialog/dialog_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../logic/cubit/create_wallet_cubit.dart';
import '../../logic/cubit/create_wallet_state.dart';

class CreateWalletPinPage extends HookWidget {
  const CreateWalletPinPage({required this.accountId, super.key});

  final String accountId;

  @override
  Widget build(final BuildContext context) {
    final pinController = useTextEditingController();
    final confirmPinController = useTextEditingController();

    useListenable(pinController);
    useListenable(confirmPinController);

    return Scaffold(
      appBar: AppBar(title: const Text('Set Wallet PIN'), centerTitle: true),
      body: BlocConsumer<CreateWalletCubit, CreateWalletState>(
        listener: (final context, final state) {
          state.maybeWhen(
            pinCreated: () async {
              await DialogComponent.showInfo(
                context: context,
                title: 'Success',
                body: 'Your wallet PIN has been set successfully!',
              );
              if (context.mounted) {
                unawaited(context.read<HomeCubit>().getWallets());
                context.go(RoutesNames.home);
              }
            },
            failure: (final String message) => unawaited(
              DialogComponent.showError(
                context: context,
                title: 'Error',
                error: message,
              ),
            ),
            orElse: () {},
          );
        },
        builder: (final context, final state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(AppConfig.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/undraw_fingerprint_kdwq.svg',
                      height: 180.h,
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Secure Your Wallet',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Set a 6-digit PIN to secure your transactions and sensitive operations.',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.h),
                    CardComponent(
                      child: Column(
                        children: [
                          TextFormFieldComponent(
                            controller: pinController,
                            label: 'Wallet PIN',
                            hintText: 'Enter 6-digit PIN',
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            maxLength: 6,
                            prefixIcon: Iconsax.lock_copy,
                            onChanged: (final val) {},
                          ),
                          SizedBox(height: 20.h),
                          TextFormFieldComponent(
                            controller: confirmPinController,
                            label: 'Confirm PIN',
                            hintText: 'Re-enter 6-digit PIN',
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            maxLength: 6,
                            prefixIcon: Iconsax.lock_copy,
                            onChanged: (final val) {},
                          ),
                        ],
                      ),
                    ),
                    if (confirmPinController.text.length == 6 &&
                        pinController.text != confirmPinController.text)
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text(
                          'PINs do not match.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    SizedBox(height: 48.h),
                    FilledButtonComponent(
                      onPressed: () {
                        unawaited(HapticFeedback.vibrate());
                        unawaited(
                          context.read<CreateWalletCubit>().createWalletPin(
                            accountId: accountId,
                            pinHash: pinController.text,
                          ),
                        );
                      },
                      isEnabled:
                          pinController.text.length == 6 &&
                          pinController.text == confirmPinController.text &&
                          !isLoading,
                      label: isLoading ? 'Setting PIN...' : 'Set PIN & Finish',
                    ),
                  ],
                ),
              ),
              if (isLoading)
                Container(
                  color: Colors.black.withValues(alpha: 0.1),
                  child: const Center(child: CircularProgressIndicator()),
                ),
            ],
          );
        },
      ),
    );
  }
}
