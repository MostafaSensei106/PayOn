import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';

class GetStartedNavigation extends StatelessWidget {
  const GetStartedNavigation({
    required this.currentPage,
    required this.onPrevious,
    required this.onNext,
    super.key,
    this.isEnabled = true,
  });

  final int currentPage;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final bool isEnabled;

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return Padding(
      padding: const EdgeInsets.all(AppConfig.paddingHalf),
      child: Row(
        children: [
          if (currentPage > 0 && currentPage != 3) ...[
            Expanded(
              child: OutlinedButtonComponent.icon(
                label: l10n.back,
                icon: isRtl
                    ? Iconsax.arrow_right_3_copy
                    : Iconsax.arrow_left_2_copy,
                onPressed: onPrevious,
              ),
            ),
            const SpacingComponent.horizontal(AppConfig.paddingHalf),
          ],
          Expanded(
            child: FilledButtonComponent.icon(
              key: ValueKey<int>(currentPage),
              label: currentPage == 3 ? l10n.create_account : l10n.next,
              icon: currentPage == 3
                  ? Iconsax.user_add_copy
                  : (isRtl
                        ? Iconsax.arrow_left_2_copy
                        : Iconsax.arrow_right_3_copy),
              onPressed: onNext,
              isEnabled: isEnabled,
            ),
          ),
        ],
      ),
    );
  }
}
