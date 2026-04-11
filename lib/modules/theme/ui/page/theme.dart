import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/theme/logic/cubit/theme_cubit.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SidePageAppBarComponent(title: 'مظهر التطبيق'),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: RadioGroup<ThemeMode>(
              groupValue: state.themeMode,
              onChanged: (val) => context.read<ThemeCubit>().changeTheme(val!),
              child: Column(
                children: [
                  ListTileIconComponent.top(
                    title: 'فاتح',
                    subtitle: 'استخدام المظهر الفاتح دائماً',
                    leading: Iconsax.sun_fog_copy,
                    trailing: const Radio<ThemeMode>(value: ThemeMode.light),
                    onTap: () =>
                        context.read<ThemeCubit>().changeTheme(ThemeMode.light),
                  ),
                  ListTileIconComponent.middle(
                    title: 'داكن',
                    subtitle: 'استخدام المظهر الداكن دائماً',
                    leading: Iconsax.moon_copy,
                    trailing: const Radio<ThemeMode>(value: ThemeMode.dark),
                    onTap: () =>
                        context.read<ThemeCubit>().changeTheme(ThemeMode.dark),
                  ),
                  ListTileIconComponent.bottom(
                    title: 'نظام التشغيل',
                    subtitle: 'تغيير المظهر تلقائياً حسب إعدادات جهازك',
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
