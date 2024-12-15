
import 'package:flutter/material.dart';
import 'package:motor_cycle1/model/signup_model.dart';

class SignupWidget extends StatelessWidget {
  SignupWidget({super.key});

TextEditingController controller_name=TextEditingController();
TextEditingController controller_phone=TextEditingController();
TextEditingController controller_email=TextEditingController();
TextEditingController controller_password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
      TextField,
        TextFormField(
          controller:controller_name ,
          decoration: InputDecoration(

            labelText: "Name",

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Email",
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(height: 10,),

        TextFormField(
          decoration: InputDecoration(
              labelText: "Password",
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(height: 10,),

        TextFormField(
          decoration: InputDecoration(
              labelText: "Phone",
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ],
    );
  }
}
