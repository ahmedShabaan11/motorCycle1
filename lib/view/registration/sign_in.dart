import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';
import 'package:motor_cycle1/core/string_manager.dart';
import 'package:motor_cycle1/core/widgets/back_button.dart';
import 'package:motor_cycle1/core/widgets/custom_button.dart';
import 'package:motor_cycle1/core/widgets/global_text_field.dart';

class SignInScreen extends StatelessWidget {
  static const String namedRout = "signInScreen";

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Form(
        child: Column(
          children: [
            Row(
              children: [
                BackButtonWidget(),
                Spacer(),
                Text(
                  StringManager.signIn,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Spacer(),
                Spacer()
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            GlobalTextForm(hint: StringManager.email),
            GlobalTextForm(hint: StringManager.password),
            CustomButton(
              text: StringManager.signIn,
            ),
          ],
        ),
      ),
    );
  }
}
