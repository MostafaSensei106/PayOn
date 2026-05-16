import 'package:flutter/material.dart';

abstract class BaseThemeRepository {
  Future<void> cacheThemeMode(ThemeMode mode);
  ThemeMode getThemeMode();
}
