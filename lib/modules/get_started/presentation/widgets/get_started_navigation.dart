import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';
import 'package:payon/core/widgets/buttons/filled_button/filled_button_component.dart';
import 'package:payon/core/widgets/buttons/outlined_button/outlined_button_component.dart';
import 'package:payon/core/widgets/layout/spacing/spacing_component.dart';
import 'package:payon/l10n/app_localizations.dart';

class GetStartedNavigation extends StatelessWidget {
  const GetStartedNavigation({
    super.key,
    required this.currentPage,
    required this.onPrevious,
    required this.onNext,
  });

  final int currentPage;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return Padding(
      padding: EdgeInsets.all(AppConfig.paddingHalf),
      child: Row(
        children: [
          if (currentPage > 0 && currentPage != 2) ...[
            Expanded(
              child: OutlinedButtonComponent.icon(
                label: l10n.back,
                icon: isRtl
                    ? Iconsax.arrow_right_3_copy
                    : Iconsax.arrow_left_2_copy,
                onPressed: onPrevious,
              ),
            ),
            SpacingComponent.horizontal(AppConfig.paddingHalf),
          ],
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: FilledButtonComponent.icon(
                key: ValueKey<int>(currentPage),
                label: currentPage == 2 ? l10n.create_account : l10n.next,
                icon: currentPage == 2
                    ? Iconsax.user_add_copy
                    : (isRtl
                          ? Iconsax.arrow_left_2_copy
                          : Iconsax.arrow_right_3_copy),
                onPressed: onNext,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
