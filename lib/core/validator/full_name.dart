import 'package:formz/formz.dart';

enum FullNameError { empty, oneWordMin3Characters, hasSpecialCharacters }

class FullName extends FormzInput<String, FullNameError> {
  const FullName.pure() : super.pure('');
  const FullName.dirty([super.value = '']) : super.dirty();

  @override
  FullNameError? validator(String value) {
    if (value.isEmpty) {
      return FullNameError.empty;
    }

    //TODO:

    return null;
  }
}
