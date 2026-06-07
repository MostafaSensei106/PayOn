import 'package:flutter/material.dart';

final class ThemeService {
  ColorScheme get(BuildContext context) => Theme.of(context).colorScheme;
  TextTheme getTextTheme(BuildContext context) => Theme.of(context).textTheme;
}
