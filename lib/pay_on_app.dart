import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';
import 'core/constants/app_config.dart';
import 'core/di/di.dart';
import 'core/localization/logic/cubit/localization_cubit.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/logic/cubit/theme_cubit.dart';
import 'l10n/app_localizations.dart';

class PayOnApp extends StatelessWidget {
  const PayOnApp({super.key});

  @override
  Widget build(final BuildContext context) => ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (final context, final child) => ToastificationWrapper(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<ThemeCubit>()),
          BlocProvider(create: (_) => getIt<LocalizationCubit>()),
        ],
        child: Builder(
          builder: (context) {
            final themeMode = context.select(
              (ThemeCubit cubit) => cubit.state.themeMode,
            );
            final locale = context.select(
              (LocalizationCubit cubit) => cubit.state.locale,
            );
            return MaterialApp.router(
              title: AppConfig.appName,
              onGenerateTitle: (_) => AppConfig.appName,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: themeMode,
              locale: locale,
              scrollBehavior: const CupertinoScrollBehavior(),
              restorationScopeId: 'app',

              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: AppRouter.router,
              themeAnimationCurve: Curves.fastOutSlowIn,

              builder: (final context, final child) => SafeArea(
                top: false,
                left: false,
                right: false,
                child: child!,
              ),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    ),
  );
}
