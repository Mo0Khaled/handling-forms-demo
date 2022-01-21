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
              title: "Name",
              hintText: "Write Your Name",
              prefixIcon: Icons.person,
            ),
            SizedBox(
              height: 15,
            ),
            DefaultTextField(
              title: "Email",
              hintText: "Write Your Email",
              prefixIcon: Icons.mail,
            ),
            SizedBox(
              height: 15,
            ),
            DefaultTextField(
              title: "Password",
              hintText: "Write Your Password",
              prefixIcon: Icons.lock,
            ),
            SizedBox(
              height: 15,
            ),
            DefaultTextField(
              title: "RePassword",
              hintText: "Write Your Password again",
              prefixIcon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }
}
