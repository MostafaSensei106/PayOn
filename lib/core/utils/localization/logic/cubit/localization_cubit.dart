import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/base_localization_repository.dart';

part 'localization_state.dart';
part 'localization_cubit.freezed.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit(this._localizationRepository)
    : super(
        LocalizationState(
          locale: Locale(_localizationRepository.getLanguageCode()),
        ),
      );

  final BaseLocalizationRepository _localizationRepository;

  Future<void> changeLanguage(String langCode) async {
    if (state.locale.languageCode == langCode) return;

    emit(state.copyWith(locale: Locale(langCode)));
    await _localizationRepository.cacheLanguageCode(langCode);
  }
}
