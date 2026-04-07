import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';
import 'core/constants/app_config.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'l10n/app_localizations.dart';

class PayOnApp extends StatelessWidget {
  const PayOnApp({super.key});

  @override
  Widget build(final BuildContext context) => ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (final context, final child) => ToastificationWrapper(
      child: MaterialApp.router(
        title: AppConfig.appName,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: AppRouter.router,
        builder: (final context, final child) =>
            SafeArea(top: false, left: false, right: false, child: child!),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
