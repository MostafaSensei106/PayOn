import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import '../../di/di.dart';
import '../../services/l10n/l10n_service.dart';

enum PasswordError { empty, tooShort, hasEmojes, invalid, hasSpaces }

final class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordError? validator(String value) {
    if (value.isEmpty) return PasswordError.empty;

    if (value.trim().length < 8) return PasswordError.tooShort;

    final emojiRegExp = RegExp(
      r'[\u{1F600}-\u{1F64F}\u{1F300}-\u{1F5FF}\u{1F680}-\u{1F6FF}\u{1F700}-\u{1F77F}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]',
      unicode: true,
    );
    if (emojiRegExp.hasMatch(value)) {
      return PasswordError.hasEmojes;
    }

    if (RegExp(r'\s').hasMatch(value)) {
      return PasswordError.hasSpaces;
    }

    return null;
  }
}

extension PasswordErrorExtension on PasswordError {
  String nameWithL10n(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    switch (this) {
      case PasswordError.empty:
        return l10n.error_password_empty;
      case PasswordError.tooShort:
        return l10n.error_password_too_short;
      case PasswordError.hasEmojes:
        return l10n.error_password_emojis;
      case PasswordError.hasSpaces:
        return l10n.error_password_spaces;
      case PasswordError.invalid:
        return l10n.error_password_invalid;
    }
  }
}
