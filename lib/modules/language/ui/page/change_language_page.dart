// ignore_for_file: deprecated_member_use

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/svgs_images.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/utils/localization/logic/cubit/localization_cubit.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../../../l10n/app_localizations.dart';

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final supportedLocales = getIt<L10nService>().supportedLocales;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: SidePageAppBarComponent(title: l10n.app_language),
      body: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          final currentLangCode = state.locale.languageCode;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: RadioGroup<String>(
              groupValue: currentLangCode,
              onChanged: (val) {
                if (val != null) {
                  context.read<LocalizationCubit>().changeLanguage(val);
                }
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: kToolbarHeight + AppConfig.padding + 16,
                  ),
                  SvgComponent.descriptions(
                    path: SvgsImages.languageSvg,
                    title: l10n.app_language,
                    subtitle: l10n.language_desc,
                  ),
                  const SizedBox(height: AppConfig.margin),

                  ...List.generate(supportedLocales.length, (index) {
                    final locale = supportedLocales[index];
                    final langCode = locale.languageCode;

                    final localeData = lookupAppLocalizations(locale);

                    final title = localeData.language_name;
                    final subtitle = localeData.language_desc;
                    final countryCode = localeData.country_code;

                    final isFirst = index == 0;
                    final isLast = index == supportedLocales.length - 1;
                    final isSingle = supportedLocales.length == 1;

                    final radioWidget = Radio<String>(
                      value: langCode,
                      groupValue: currentLangCode,
                      onChanged: (val) {
                        if (val != null) {
                          context
                              .read<LocalizationCubit>()
                              .changeLanguage(val);
                        }
                      },
                    );

                    final flagWidget = CountryFlag.fromCountryCode(countryCode);

                    if (isSingle) {
                      return ListTileWidgetComponent(
                        title: title,
                        subtitle: subtitle,
                        leading: flagWidget,
                        trailing: radioWidget,
                        onTap: () => context
                            .read<LocalizationCubit>()
                            .changeLanguage(langCode),
                      );
                    } else if (isFirst) {
                      return ListTileWidgetComponent.top(
                        title: title,
                        subtitle: subtitle,
                        leading: flagWidget,
                        trailing: radioWidget,
                        onTap: () => context
                            .read<LocalizationCubit>()
                            .changeLanguage(langCode),
                      );
                    } else if (isLast) {
                      return ListTileWidgetComponent.bottom(
                        title: title,
                        subtitle: subtitle,
                        leading: flagWidget,
                        trailing: radioWidget,
                        onTap: () => context
                            .read<LocalizationCubit>()
                            .changeLanguage(langCode),
                      );
                    } else {
                      return ListTileWidgetComponent.middle(
                        title: title,
                        subtitle: subtitle,
                        leading: flagWidget,
                        trailing: radioWidget,
                        onTap: () => context
                            .read<LocalizationCubit>()
                            .changeLanguage(langCode),
                      );
                    }
                  }),
                  SizedBox(height: MediaQuery.of(context).padding.bottom),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
