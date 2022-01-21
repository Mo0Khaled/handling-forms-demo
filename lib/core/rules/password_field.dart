import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class PasswordField extends FormzInput<String, PasswordValidationError> {
  const PasswordField.pure([String value = '']) : super.pure(value);
  const PasswordField.dirty([String value = '']) : super.dirty(value);

  // ignore: unused_field
  static final _passwordRegex = RegExp(r"/^(?=.*\d)(?=.*[a-zA-Z]).{6,20}$/");
  @override
  PasswordValidationError? validator(String? value) {
    return (value ?? '').length >= 6 ? null : PasswordValidationError.invalid;
  }
}
