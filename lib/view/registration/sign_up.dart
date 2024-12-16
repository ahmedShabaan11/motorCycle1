import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';
import 'package:motor_cycle1/core/string_manager.dart';
import 'package:motor_cycle1/core/widgets/back_button.dart';
import 'package:motor_cycle1/core/widgets/custom_button.dart';
import 'package:motor_cycle1/core/widgets/global_text_field.dart';

class SignUpScreen extends StatelessWidget {
  static const String namedRout = "signUpScreen";

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Row(
                children: [
                  BackButtonWidget(),
                  Spacer(),
                  Text(
                    StringManager.signUp,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Spacer(),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 22,
              ),
              GlobalTextForm(hint: StringManager.name),
              GlobalTextForm(hint: StringManager.phone),
              GlobalTextForm(hint: StringManager.email),
              GlobalTextForm(hint: StringManager.password),
              CustomButton(
                text: StringManager.signUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
