import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../data/models/account_model.dart';

class AccountBalanceCard extends StatefulWidget {
  const AccountBalanceCard({required this.account, super.key});
  final AccountModel account;

  @override
  State<AccountBalanceCard> createState() => _AccountBalanceCardState();
}

class _AccountBalanceCardState extends State<AccountBalanceCard> {
  bool _showBalance = true;

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          border: Border.all(width: 2, color: colorScheme.primaryContainer),
          gradient: RadialGradient(
            center: AlignmentGeometry.topRight,
            tileMode: TileMode.mirror,
            radius: 1.7,
            colors: [
              Theme.of(context).colorScheme.inversePrimary,
              Theme.of(context).colorScheme.onPrimaryFixed,
            ],
            stops: const [0.0, 1.0],
          ),
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
                    CountryFlag.fromCountryCode(widget.account.countryCode),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.account.currencyName,
                          style: TextStyle(
                            fontSize: 12,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                        Text(
                          widget.account.symbol,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButtonComponent.filled(
                  icon: _showBalance
                      ? Iconsax.eye_copy
                      : Iconsax.eye_slash_copy,
                  onPressed: () => setState(() => _showBalance = !_showBalance),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.total_balance,
                  style: TextStyle(fontSize: 11, color: colorScheme.onPrimary),
                ),
                FittedBox(
                  child: Text(
                    _showBalance
                        ? '${widget.account.balance} ${widget.account.symbol}'
                        : '•••••• ${widget.account.symbol}',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.account.accountId,
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'monospace',
                    color: colorScheme.onPrimary,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
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
