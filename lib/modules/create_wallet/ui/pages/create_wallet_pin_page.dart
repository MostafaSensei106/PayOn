import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/router/routes_names.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';
import '../../../profile/logic/cubit/user_profile_state.dart';
import '../../logic/cubit/create_wallet_cubit.dart';
import '../../logic/cubit/create_wallet_state.dart';

class CreateWalletPinPage extends StatefulWidget {
  const CreateWalletPinPage({super.key});

  @override
  State<CreateWalletPinPage> createState() => _CreateWalletPinPageState();
}

class _CreateWalletPinPageState extends State<CreateWalletPinPage> {
  final _pinController = TextEditingController();
  final _confirmPinController = TextEditingController();

  @override
  void dispose() {
    _pinController.dispose();
    _confirmPinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProfileState = context.watch<UserProfileCubit>().state;

    return Scaffold(
      appBar: AppBar(title: const Text('Set Wallet PIN')),
      body: BlocConsumer<CreateWalletCubit, CreateWalletState>(
        listener: (context, state) {
          state.maybeWhen(
            pinCreated: () {
              unawaited(context.read<HomeCubit>().getWallets());
              context.go(RoutesNames.home);
            },
            failure: (message) => ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final accountId = userProfileState.maybeWhen(
            success: (data) => data.nationalId,
            orElse: () => '',
          );

          return Padding(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormFieldComponent(
                  controller: _pinController,
                  label: 'Wallet PIN',
                  hintText: 'Enter 6-digit PIN',
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  prefixIcon: Iconsax.lock_copy,
                  onChanged: (val) => setState(() {}),
                ),
                SizedBox(height: 20.h),
                TextFormFieldComponent(
                  controller: _confirmPinController,
                  label: 'Confirm PIN',
                  hintText: 'Re-enter 6-digit PIN',
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  prefixIcon: Iconsax.lock_copy,
                  onChanged: (val) => setState(() {}),
                ),
                const Spacer(),
                FilledButtonComponent(
                  onPressed: () {
                    unawaited(HapticFeedback.vibrate());
                    context.read<CreateWalletCubit>().createWalletPin(
                      accountId: accountId,
                      pinHash: _pinController.text,
                    );
                  },
                  isEnabled:
                      _pinController.text.length == 6 &&
                      _pinController.text == _confirmPinController.text,
                  label: 'Set PIN & Finish',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
