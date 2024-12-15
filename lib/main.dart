import 'package:flutter/material.dart';
import 'package:motor_cycle1/view/home_view.dart';
import 'package:motor_cycle1/view/sign_up_view.dart';
import 'package:motor_cycle1/view/splash_view.dart';
import 'package:motor_cycle1/view/welcome_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: "Splash",
      routes: {
        SplashView.splash: (context) => SplashView(),
        SignUpView.signUpView :(context)=>SignUpView(),
        HomeView.home: (context) => HomeView(),
        WelcomeView.welcomeView:(context)=>WelcomeView(),

      },
    );
  }
}
