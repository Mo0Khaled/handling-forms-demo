import 'package:formz/formz.dart';
import 'package:handle_forms_demo/core/rules/email_field.dart';
import 'package:handle_forms_demo/core/rules/name_field.dart';
import 'package:handle_forms_demo/core/rules/password_field.dart';


class SignUpForm with FormzMixin {
  NameField name;
  EmailField email;
  PasswordField password;

  SignUpForm({
    this.name = const NameField.pure(),
    this.email = const EmailField.pure(),
    this.password = const PasswordField.pure(),
  });

  @override
  List<FormzInput> get inputs => [name, email, password];
}
