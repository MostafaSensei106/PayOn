import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_constants.dart';
import 'package:payon/core/widgets/buttons/filled_button_component.dart';
import 'package:payon/core/widgets/navigation/app_bar_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBarComponent(title: l10n.get_started),
      body: Column(
        children: [
          const Icon(
            Iconsax.wallet_3,
            size: AppConstants.largeIconSize,
            color: AppColors.primary,
          ),
          SizedBox(height: AppConstants.largeSpacing.h),
          Text(
            l10n.manage_finances_title,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: AppConstants.defaultSpacing.h),
          Text(
            l10n.manage_finances_subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: AppColors.secondary),
          ),
          const Spacer(),
          FilledButtonComponent(
            label: l10n.lets_get_started,
            onPressed: () => context.pop(),
          ),
          SizedBox(height: AppConstants.largeSpacing.h),
        ],
      ),
    );
  }
}
