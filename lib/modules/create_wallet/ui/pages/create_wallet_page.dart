import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';
import '../../../profile/logic/cubit/user_profile_state.dart';
import '../../logic/cubit/create_wallet_cubit.dart';
import '../../logic/cubit/create_wallet_state.dart';
import '../../logic/entity/currency_entity.dart';

class CreateWalletPage extends StatefulWidget {
  const CreateWalletPage({super.key});

  @override
  State<CreateWalletPage> createState() => _CreateWalletPageState();
}

class _CreateWalletPageState extends State<CreateWalletPage> {
  final _ipaController = TextEditingController();
  CurrencyEntity? _selectedCurrency;

  @override
  void dispose() {
    _ipaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProfileState = context.watch<UserProfileCubit>().state;

    return Scaffold(
      appBar: AppBar(title: const Text('Create Wallet')),
      body: BlocConsumer<CreateWalletCubit, CreateWalletState>(
        listener: (context, state) {
          state.maybeWhen(
            walletCreated: () =>
                const CreateWalletPinRoute().push<void>(context),
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

          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            currenciesLoaded: (currencies) =>
                _buildForm(context, currencies, accountId),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildForm(
    BuildContext context,
    List<CurrencyEntity> currencies,
    String accountId,
  ) {
    return Padding(
      padding: const EdgeInsets.all(AppConfig.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormFieldComponent(
            controller: _ipaController,
            label: 'Instant Payment Address (IPA)',
            hintText: 'e.g., username@payon',
            prefixIcon: Iconsax.link_2_copy,
            onChanged: (val) => setState(() {}),
          ),
          SizedBox(height: 20.h),
          DropdownButtonFormField<CurrencyEntity>(
            initialValue: _selectedCurrency,
            hint: const Text('Select Currency'),
            items: currencies
                .map(
                  (c) => DropdownMenuItem(
                    value: c,
                    child: Text('${c.name} (${c.code})'),
                  ),
                )
                .toList(),
            onChanged: (value) => setState(() => _selectedCurrency = value),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
              ),
            ),
          ),
          const Spacer(),
          FilledButtonComponent(
            onPressed: () {
              unawaited(HapticFeedback.vibrate());
              context.read<CreateWalletCubit>().createWallet(
                accountId: accountId,
                ipa: _ipaController.text,
                currencyId: _selectedCurrency!.id,
              );
            },
            isEnabled:
                _ipaController.text.isNotEmpty && _selectedCurrency != null,
            label: 'Create Wallet',
          ),
        ],
      ),
    );
  }
}
