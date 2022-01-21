import 'package:formz/formz.dart';

enum NameValidationError { invalid }

class NameField extends FormzInput<String, NameValidationError> {
  const NameField.pure([String value = '']) : super.pure(value);
  const NameField.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegex = RegExp(r'^([A-Za-z]{2,})+\ [A-Za-z\d]$');

  @override
  NameValidationError? validator(String? value) {
    return _passwordRegex.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}
