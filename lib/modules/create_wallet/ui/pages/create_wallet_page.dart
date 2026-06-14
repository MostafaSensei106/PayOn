import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/feedback/dialog/dialog_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/cubit/create_wallet_cubit.dart';
import '../../logic/cubit/create_wallet_state.dart';
import '../../logic/entity/currency_entity.dart';
import '../widgets/currency_item_widget.dart';

class CreateWalletPage extends HookWidget {
  const CreateWalletPage({required this.accountId, super.key});

  final String accountId;

  @override
  Widget build(final BuildContext context) {
    final ipaController = useTextEditingController();
    final selectedCurrency = useState<CurrencyEntity?>(null);
    final currenciesList = useState<List<CurrencyEntity>>([]);

    useListenable(ipaController);

    useEffect(() {
      if (currenciesList.value.isEmpty) {
        context.read<CreateWalletCubit>().getCurrencies().ignore();
      }
      return null;
    }, []);

    return Scaffold(
      appBar: SidePageAppBarComponent(title: context.localeKeys.create_wallet),
      body: BlocConsumer<CreateWalletCubit, CreateWalletState>(
        listener: (final context, final state) {
          state.maybeWhen(
            currenciesLoaded: (final currencies) {
              currenciesList.value = currencies;
              if (currencies.isNotEmpty && selectedCurrency.value == null) {
                selectedCurrency.value = currencies.first;
              }
            },
            walletCreated: () => unawaited(
              CreateWalletPinRoute(accountId: accountId).push<void>(context),
            ),
            failure: (final message) => unawaited(
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

          if (isLoading && currenciesList.value.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(AppConfig.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/undraw_mobile-payments_uate.svg',
                      height: 180.h,
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      context.localeKeys.set_up_your_wallet,
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      context.localeKeys.choose_ipa_and_currency,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormFieldComponent(
                          controller: ipaController,
                          label: context.localeKeys.ipa_address,
                          hintText: context.localeKeys.ipa_hint_username,
                          prefixIcon: Iconsax.link_2_copy,
                          suffix: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Text(
                              '@payon',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onChanged: (final val) {},
                        ),
                        SizedBox(height: 24.h),
                        Text(
                          context.localeKeys.select_currency,
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12.h),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: currenciesList.value.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 12.h),
                          itemBuilder: (context, index) {
                            final currency = currenciesList.value[index];
                            return CurrencyItemWidget(
                              currency: currency,
                              isSelected:
                                  selectedCurrency.value?.id == currency.id,
                              onTap: () => selectedCurrency.value = currency,
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 48.h),
                    FilledButtonComponent(
                      onPressed: () {
                        unawaited(HapticFeedback.vibrate());
                        unawaited(
                          context.read<CreateWalletCubit>().createWallet(
                            accountId: accountId,
                            ipa: '${ipaController.text}@payon',
                            currencyId: selectedCurrency.value!.id,
                          ),
                        );
                      },
                      isEnabled:
                          ipaController.text.isNotEmpty &&
                          selectedCurrency.value != null &&
                          !isLoading,
                      label: isLoading
                          ? context.localeKeys.creating
                          : context.localeKeys.create_wallet,
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
