import 'package:formz/formz.dart';

enum EmailValidationError {
  empty,
  notLowerCase,
  missingAtSign,
  missingDot,
  missingDomain,
  missingExtension,
  invalidCharacters,
}

final class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) return EmailValidationError.empty;

    if (value.toLowerCase() != value) return EmailValidationError.notLowerCase;

    if (!value.contains('@')) return EmailValidationError.missingAtSign;

    final parts = value.split('@');
    final domainPart = parts.length > 1 ? parts[1] : '';

    if (domainPart.isEmpty) return EmailValidationError.missingDomain;

    if (!domainPart.contains('.')) return EmailValidationError.missingExtension;

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return EmailValidationError.invalidCharacters;
    }
    return null;
  }
}
