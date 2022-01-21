import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:handle_forms_demo/signup/data/sign_up_form.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static final GlobalKey<FormState> signUpkey = GlobalKey<FormState>();
  SignUpForm signUpForm = SignUpForm();

  void signUpValidate() {
    signUpkey.currentState!.save();
    if (Formz.validate(signUpForm.inputs) == FormzStatus.valid) {
      signUp();
    }
    emit(SignUPUnValid());
  }

  void signUp() {
    log('signed up');
  }
}
