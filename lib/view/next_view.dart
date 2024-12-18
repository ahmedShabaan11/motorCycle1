import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';
import 'package:motor_cycle1/core/widgets/back_button.dart';
import 'package:motor_cycle1/view/registration/sign_in.dart';

class NextView extends StatelessWidget {
  const NextView({super.key});

  static String namedRoute = "NextView";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:ColorManager.primaryColor,
        body: Row(children: [
          BackButtonWidget(onTap:  (){Navigator.pushNamed(context, SignInScreen.namedRout);},
            icon: Icons.arrow_back_ios_new_outlined,
          ),
          SizedBox(width: 30,),
          Text("PEGOUT_LR01",style:  TextStyle(color:  Colors.white,fontSize: 20),)
        ]),


      ),
    );
  }
}
