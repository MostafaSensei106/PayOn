import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/base_theme_repository.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this._themeRepository)
    : super(ThemeState(themeMode: _themeRepository.getThemeMode()));
  final BaseThemeRepository _themeRepository;

  Future<void> changeTheme(ThemeMode newMode) async {
    if (state.themeMode == newMode) return;

    emit(state.copyWith(themeMode: newMode));
    await _themeRepository.cacheThemeMode(newMode);
  }
}
