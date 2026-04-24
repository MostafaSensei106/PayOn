import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/services/theme/theme_service.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../data/models/account_model.dart';

class AccountBalanceCard extends HookWidget {
  const AccountBalanceCard({required this.account, super.key});
  final AccountModel account;

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final colorScheme = getIt<ThemeService>().get(context);
    final showBalance = useState(true);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          border: Border.all(width: 2, color: colorScheme.primaryContainer),
          color: colorScheme.surface,
        ),
        padding: const EdgeInsets.all(AppConfig.paddingHalf),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CountryFlag.fromCountryCode(account.countryCode),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          account.currencyName,
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          account.symbol,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButtonComponent.filled(
                  icon: showBalance.value
                      ? Iconsax.eye_copy
                      : Iconsax.eye_slash_copy,
                  onPressed: () => showBalance.value = !showBalance.value,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.total_balance, style: const TextStyle(fontSize: 11)),
                FittedBox(
                  child: Text(
                    showBalance.value
                        ? '${account.balance} ${account.symbol}'
                        : '•••••• ${account.symbol}',
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '${l10n.iPA}: ${account.accountId}',
                      style: const TextStyle(
                        fontSize: 10,
                        fontFamily: 'monospace',
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    l10n.active,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
