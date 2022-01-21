import 'package:flutter/material.dart';
import 'package:handle_forms_demo/widgets/text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Handling Forms Demo"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 30),
        child: ListView(
          children: const [
            DefaultTextField(
              title: "first name",
              hintText: "Write Your first name",
              prefixIcon: Icons.person,
            ),
            DefaultTextField(
              title: "last name",
              hintText: "Write Your last name",
              prefixIcon: Icons.person,
            ),
            DefaultTextField(
              title: "Email",
              hintText: "Write Your email",
              prefixIcon: Icons.mail,
            ),
            DefaultTextField(
              title: "Password",
              hintText: "Write Your password",
              prefixIcon: Icons.lock,
            ),
            DefaultTextField(
              title: "RePassword",
              hintText: "Write Your password again",
              prefixIcon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }
}
