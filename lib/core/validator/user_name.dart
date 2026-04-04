import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';

import '../di/di.dart';
import '../services/l10n/l10n_service.dart';

enum UserNameError {
  empty,
  hasSpecialCharacters,
  hasSpaces,
  tooShort,
  invalid,
  arbicNotAllowed,
  tooLongMax20Characters,
  hasImojes,
}

final class UserName extends FormzInput<String, UserNameError> {
  const UserName.pure() : super.pure('');
  const UserName.dirty([super.value = '']) : super.dirty();

  @override
  UserNameError? validator(String value) {
    if (value.isEmpty) return UserNameError.empty;

    if (value.length < 3) {
      return UserNameError.tooShort;
    }

    if (RegExp(r'\s').hasMatch(value)) {
      return UserNameError.hasSpaces;
    }

    if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%/-]').hasMatch(value)) {
      return UserNameError.hasSpecialCharacters;
    }

    final emojiRegExp = RegExp(
      r'[\u{1F600}-\u{1F64F}\u{1F300}-\u{1F5FF}\u{1F680}-\u{1F6FF}\u{1F700}-\u{1F77F}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]',
      unicode: true,
    );
    if (emojiRegExp.hasMatch(value)) {
      return UserNameError.hasImojes;
    }

    if (RegExp(
      r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]',
    ).hasMatch(value)) {
      return UserNameError.arbicNotAllowed;
    }

    if (value.trim().length > 20) {
      return UserNameError.tooLongMax20Characters;
    }

    return null;
  }
}

extension UserNameErrorExtension on UserNameError {
  String nameWithL10n(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    switch (this) {
      case UserNameError.empty:
        return l10n.user_name_can_not_be_empty;
      case UserNameError.tooShort:
        return l10n.user_name_is_too_short_min_3_characters;
      case UserNameError.hasSpecialCharacters:
        return l10n.user_name_can_not_have_special_characters;
      case UserNameError.hasSpaces:
        return l10n.user_name_can_not_have_spaces;
      case UserNameError.hasImojes:
        return l10n.user_name_can_not_have_emojis;

      case UserNameError.arbicNotAllowed:
        return l10n.user_name_arbic_not_allowed;

      case UserNameError.tooLongMax20Characters:
        return l10n.user_name_is_too_long_max_20_characters;
      case UserNameError.invalid:
        return l10n.user_name_not_valid;
    }
  }
}
