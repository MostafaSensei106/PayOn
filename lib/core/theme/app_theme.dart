// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import '../constants/app_config.dart';

final class AppTheme {
  static ThemeData lightTheme(String fontFamily) => ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: fontFamily,

    appBarTheme: const AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),

    datePickerTheme: DatePickerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    ),

    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppConfig.outBorderRadius),
        ),
      ),
    ),
  );

  static ThemeData darkTheme(String fontFamily) => ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: fontFamily,

    appBarTheme: const AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),

    datePickerTheme: DatePickerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    ),

    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppConfig.outBorderRadius),
        ),
      ),
    ),
  );
}
