import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class PasswordValidator extends FormzInput<String, PasswordValidationError> {
  const PasswordValidator.pure([String value = '']) : super.pure(value);
  const PasswordValidator.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegex =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$');

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegex.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}