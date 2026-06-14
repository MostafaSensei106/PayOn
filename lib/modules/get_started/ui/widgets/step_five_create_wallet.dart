import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../create_wallet/ui/widgets/currency_item_widget.dart';
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/cubit/register/register_state.dart';

class StepFiveCreateWallet extends HookWidget {
  const StepFiveCreateWallet({super.key});

  @override
  Widget build(BuildContext context) {
    final pinController = useTextEditingController();
    final confirmPinController = useTextEditingController();
    final pinMismatch = useState(false);

    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.form.walletStep != current.form.walletStep ||
          previous.form.ipa != current.form.ipa ||
          previous.form.selectedCurrencyId != current.form.selectedCurrencyId ||
          previous.form.walletCurrencies != current.form.walletCurrencies ||
          previous.form.walletPin != current.form.walletPin,
      builder: (context, state) {
        final form = state.form;
        final registerCubit = context.read<RegisterCubit>();

        if (form.walletStep == 0) {
          return _buildWalletForm(context, form, registerCubit);
        }
        return _buildPinForm(
          context,
          registerCubit,
          pinController,
          confirmPinController,
          pinMismatch,
        );
      },
    );
  }

  Widget _buildWalletForm(
    BuildContext context,
    RegisterFormState form,
    RegisterCubit registerCubit,
  ) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      children: [
        Text(
          'Create Your Wallet',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppConfig.paddingHalf.h),
        TextFormFieldComponent(
          label: 'IPA Address',
          prefixIcon: Iconsax.link_2_copy,
          initialValue: form.ipa,
          onChanged: registerCubit.ipaOnChanged,
          suffix: Text(
            '@payreb',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        SizedBox(height: AppConfig.padding.h),
        Text(
          'Select Currency',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppConfig.paddingHalf.h),
        if (form.walletCurrencies.isEmpty)
          const Center(child: CircularProgressIndicator())
        else
          ...form.walletCurrencies.map(
            (currency) => Padding(
              padding: EdgeInsets.only(bottom: AppConfig.paddingHalf.h),
              child: CurrencyItemWidget(
                currency: currency,
                isSelected: form.selectedCurrencyId == currency.id,
                onTap: () => registerCubit.currencyOnChanged(currency.id),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildPinForm(
    BuildContext context,
    RegisterCubit registerCubit,
    TextEditingController pinController,
    TextEditingController confirmPinController,
    ValueNotifier<bool> pinMismatch,
  ) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      children: [
        Text(
          'Set Wallet PIN',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppConfig.paddingHalf.h),
        CardComponent(
          child: Column(
            spacing: AppConfig.paddingHalf,
            children: [
              TextFormFieldComponent(
                label: 'PIN',
                prefixIcon: Iconsax.lock_copy,
                controller: pinController,
                obscureText: true,
                maxLength: 6,
                keyboardType: TextInputType.number,
                onChanged: (_) {
                  pinMismatch.value = false;
                },
              ),
              TextFormFieldComponent(
                label: 'Confirm PIN',
                prefixIcon: Iconsax.lock_copy,
                controller: confirmPinController,
                obscureText: true,
                maxLength: 6,
                keyboardType: TextInputType.number,
                errorText: pinMismatch.value ? 'PINs do not match' : null,
                onChanged: (value) {
                  final pin = pinController.text;
                  if (value.length == 6 && pin.length == 6) {
                    if (pin == value) {
                      pinMismatch.value = false;
                      registerCubit.walletPinOnChanged(pin);
                    } else {
                      pinMismatch.value = true;
                    }
                  } else {
                    pinMismatch.value = false;
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
