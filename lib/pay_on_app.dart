import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payon/l10n/app_localizations.dart';
import 'package:payon/modules/welcome/ui/page/welcome_page.dart';

class PayOnApp extends StatelessWidget {
  const PayOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'PayOn',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) =>
            SafeArea(top: false, left: false, right: false, child: child!),
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
      ),
    );
  }
}
