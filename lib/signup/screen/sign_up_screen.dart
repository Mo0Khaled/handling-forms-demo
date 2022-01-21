import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handle_forms_demo/core/rules/email_field.dart';
import 'package:handle_forms_demo/core/rules/name_field.dart';
import 'package:handle_forms_demo/core/rules/password_field.dart';
import 'package:handle_forms_demo/signup/cubit/sign_up_cubit.dart';
import 'package:handle_forms_demo/widgets/text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpCubit = BlocProvider.of<SignUpCubit>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Handling Forms Demo"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 30),
        child: Form(
          key: SignUpCubit.signUpkey,
          child: BlocBuilder<SignUpCubit, SignUpState>(
            builder: (context, state) {
              return ListView(
                children: [
                  DefaultTextField(
                    title: "Name",
                    errorText: signUpCubit.signUpForm.name.invalid
                        ? "please write full name first and last"
                        : null,
                    hintText: "Write Your Name",
                    prefixIcon: Icons.person,
                    onSave: (v) {
                      signUpCubit.signUpForm.name = NameField.dirty(v!);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextField(
                    title: "Email",
                    errorText: signUpCubit.signUpForm.email.invalid
                        ? "please write right email"
                        : null,
                    hintText: "Write Your Email",
                    prefixIcon: Icons.mail,
                    onSave: (v) {
                      signUpCubit.signUpForm.email = EmailField.dirty(v!);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextField(
                    title: "Password",
                    errorText: signUpCubit.signUpForm.password.invalid
                        ? "please write strong password more than 6 char"
                        : null,
                    hintText: "Write Your Password",
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    onSave: (v) {
                      signUpCubit.signUpForm.password = PasswordField.dirty(v!);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => signUpCubit.signUpValidate(),
                    child: const Text("sign up"),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
