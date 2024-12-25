import 'package:flutter/material.dart';
import 'package:motor_cycle1/core/color_manager.dart';
import 'package:motor_cycle1/core/string_manager.dart';
import 'package:motor_cycle1/core/widgets/back_button.dart';
import 'package:motor_cycle1/view/registration/sign_in.dart';

class NextView extends StatefulWidget {
  const NextView({super.key});

  static String namedRoute = "NextView";

  @override
  State<NextView> createState() => _NextViewState();
}

class _NextViewState extends State<NextView> {
  bool selectRight = false;
  bool selectLeft = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primaryColor,
        body: Column(
          children: [
            Row(children: [
              BackButtonWidget(
                onTap: () {
                  Navigator.pushNamed(context, SignInScreen.namedRout);
                },
                icon: Icons.arrow_back_ios_new_outlined,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "PEGOUT_LR01",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ]),
            selectLeft||selectRight?SizedBox():Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * .2,
              color: Colors.red,
            ),
            selectLeft||selectRight?Spacer():SizedBox(),
            Container(
              transform: Matrix4.translationValues(
                  1, selectRight || selectLeft ? 2 : 1, 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.blackColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            selectRight = !selectRight;
                            selectLeft = false;
                            setState(() {});
                          },
                          child: Card(
                            color: ColorManager.primaryColor,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                StringManager.description,
                                style: TextStyle(color: selectRight?ColorManager.deepBlue: Colors.white),
                              ),
                            ),
                          ),
                        ),   InkWell(
                          onTap: (){
                            selectLeft = !selectLeft;
                            selectRight = false;
                            setState(() {});
                          },
                          child:
                          Card(elevation: 5,
                            color: ColorManager.primaryColor,

                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                StringManager.specification,
                                style: TextStyle(color: selectLeft?ColorManager.deepBlue:Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: selectRight?400:0,
                    duration: Duration(milliseconds: 150),
                    // transform: Matrix4.translationValues(2, 2, 1),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text:
                              "trxdyfcgvuhbljn jkguvhiibjhoktyghu esdtryfugiuhij yugih tfuygiho tuygihoj rfytugih yuiohj yrfutgihj erftgyuhij yrftguhiojtr rdfyugh tyfguhij"),
                    ),
                  ),
                  AnimatedContainer(
                    height: selectLeft?300:0,
                    duration: Duration(milliseconds:150 ),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.blueAccent),
                          text:
                              "trxdyfcgvuhbljn jkguvhiibjhoktyghu esdtryfugiuhij yugih tfuygiho tuygihoj rfytugih yuiohj yrfutgihj erftgyuhij yrftguhiojtr rdfyugh tyfguhij"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DraggableSwitchButton extends StatefulWidget {
  @override
  _DraggableSwitchButtonState createState() => _DraggableSwitchButtonState();
}

class _DraggableSwitchButtonState extends State<DraggableSwitchButton> {
  bool isSwitched = false;
  double buttonPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    double switchWidth = 150.0;
    double buttonSize = 50.0;
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          buttonPosition += details.delta.dx;
          buttonPosition = buttonPosition.clamp(0.0, switchWidth - buttonSize);
          isSwitched = buttonPosition >= (switchWidth - buttonSize) / 2;
        });
      },
      onPanEnd: (details) {
        setState(() {
          buttonPosition = isSwitched ? switchWidth - buttonSize : 0.0;
        });
      },
      child: Container(
        width: switchWidth,
        height: buttonSize,
        decoration: BoxDecoration(
          color: isSwitched ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Positioned(
                left: buttonPosition,
                top: 0,
                bottom: 0,
                child: Container(
                    width: buttonSize,
                    height: buttonSize,
                    child: BackButtonWidget())),
          ],
        ),
      ),
    );
  }
}
