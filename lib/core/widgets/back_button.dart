import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';

class BackButtonWidget extends StatelessWidget {
  void Function()? onTap;
  IconData? icon;

  BackButtonWidget({
    super.key,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 10,
          shadowColor: ColorManager.blackColor,
          color: ColorManager.lightBlue,
          child: Container(
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
            alignment: Alignment.center,
            width: 50,
            height: 50,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
