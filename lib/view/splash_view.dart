import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:motor_cycle1/view/welcome_view.dart';

import 'home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static String splash = "Splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashTransition: SplashTransition.rotationTransition,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                "assets/IMG-20241206-WA0028.jpg",

              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        nextScreen: WelcomeView(),
      ),
    );
  }
}
