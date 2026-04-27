import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/svgs_images.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/theme/logic/cubit/theme_cubit.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ChangeThemePage extends StatelessWidget {
  const ChangeThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.app_appearance),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: RadioGroup<ThemeMode>(
              groupValue: state.themeMode,
              onChanged: (val) => context.read<ThemeCubit>().changeTheme(val!),
              child: Column(
                children: [
                  const SvgComponent(path: SvgsImages.addColorSvg),
                  ListTileIconComponent.top(
                    title: l10n.light_mode,
                    subtitle: l10n.light_mode_desc,
                    leading: Iconsax.sun_fog_copy,
                    trailing: const Radio<ThemeMode>(value: ThemeMode.light),
                    onTap: () =>
                        context.read<ThemeCubit>().changeTheme(ThemeMode.light),
                  ),
                  ListTileIconComponent.middle(
                    title: l10n.dark_mode,
                    subtitle: l10n.dark_mode_desc,
                    leading: Iconsax.moon_copy,
                    trailing: const Radio<ThemeMode>(value: ThemeMode.dark),
                    onTap: () =>
                        context.read<ThemeCubit>().changeTheme(ThemeMode.dark),
                  ),
                  ListTileIconComponent.bottom(
                    title: l10n.system_mode,
                    subtitle: l10n.system_mode_desc,
                    leading: Iconsax.autobrightness_copy,
                    trailing: const Radio<ThemeMode>(value: ThemeMode.system),
                    onTap: () => context.read<ThemeCubit>().changeTheme(
                      ThemeMode.system,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
