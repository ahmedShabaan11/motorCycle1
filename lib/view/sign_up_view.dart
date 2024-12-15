import 'package:flutter/material.dart';
import 'package:motor_cycle1/Widget/signup_widget.dart';
import 'package:motor_cycle1/model/signup_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static String signUpView="signUpView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("SignUp"),),
body: SignupWidget(),

    );
  }
}

