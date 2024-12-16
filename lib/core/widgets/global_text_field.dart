import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';

class GlobalTextForm extends StatelessWidget {
  String hint;
  IconData? iconData;
  bool? obscureText;
  TextInputType? keyboardType;

  GlobalTextForm({
    super.key,
    required this.hint,
    this.obscureText,
    this.keyboardType,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 10,
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            fillColor: ColorManager.primaryColor,
            filled: true,
            isDense: true,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white),
            border:OutlineInputBorder(borderSide: BorderSide.none),
            suffixIcon: iconData != null ? Icon(iconData) : SizedBox(),
          ),
        ),
      ),
    );
  }
}
