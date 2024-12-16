import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';
import 'package:motor_cycle1/core/string_manager.dart';

class CustomButton extends StatelessWidget {void Function()? onTap;
  String text;
   CustomButton({super.key,this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        shadowColor: ColorManager.blackColor,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                ColorManager.lightBlue,
                ColorManager.deepBlue,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
