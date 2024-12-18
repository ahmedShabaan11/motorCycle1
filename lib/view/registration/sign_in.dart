import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';
import 'package:motor_cycle1/core/string_manager.dart';
import 'package:motor_cycle1/core/widgets/back_button.dart';
import 'package:motor_cycle1/core/widgets/custom_button.dart';
import 'package:motor_cycle1/core/widgets/global_text_field.dart';
import 'package:motor_cycle1/view/next_view.dart';

import 'sign_up.dart';

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
                BackButtonWidget(
                  icon: Icons.arrow_back_ios_new_outlined,
                ),
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
              onTap: () {
                Navigator.pushNamed(context, NextView.namedRoute);
              },
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.namedRout);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
