import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handle_forms_demo/signup/cubit/sign_up_cubit.dart';
import 'package:handle_forms_demo/signup/screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handling Forms Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => SignUpCubit(),
        child: const SignUpScreen(),
      ),
    );
  }
}
