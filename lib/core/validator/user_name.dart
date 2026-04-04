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
  hasImojes,
}

class UserName extends FormzInput<String, UserNameError> {
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

    if (RegExp(r'[^\w\s]').hasMatch(value)) {
      return UserNameError.hasImojes;
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
      default:
        return l10n.user_name_not_valid;
    }
  }
}
