import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/widgets/global_text_field.dart';
import 'package:motor_cycle1/view/registration/sign_in.dart';
import 'package:motor_cycle1/view/registration/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SignInScreen.namedRout,
        routes: {
          SignInScreen.namedRout: (_) => SignInScreen(),
          SignUpScreen.namedRout: (_) => SignUpScreen(),
        },
      ),
    );
  }
}
