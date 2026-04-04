import 'package:formz/formz.dart';

enum PhoneNumberError { invalid, empty }

final class PhoneNumber extends FormzInput<String, PhoneNumberError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([super.value = '']) : super.dirty();

  @override
  PhoneNumberError? validator(String value) {
    if (value.isEmpty) return PhoneNumberError.empty;

    if (!RegExp(
      r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$',
    ).hasMatch(value)) {
      return PhoneNumberError.invalid;
    }

    return null;
  }
}
