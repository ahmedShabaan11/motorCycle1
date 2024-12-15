import 'package:flutter/material.dart';
import 'package:motor_cycle1/view/home_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  static String welcomeView = "WelcomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images.jpg",
              width: 500,
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              thickness: 5,
              color: Colors.black,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Hello",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                 labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeView.home);
              },
              child: const Text(
                "Log In",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(onTap: (){


                },
                  child:  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed("signUpView");
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 200,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
