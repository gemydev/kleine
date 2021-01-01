import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kleine_app/constants/colors.dart';
import 'package:kleine_app/functions/navigation_funs.dart';
import 'package:kleine_app/functions/responsive_ui/info_widget.dart';
import 'package:kleine_app/screens/version2/login_v2.dart';
import 'package:kleine_app/screens/version2/register_v2.dart';

class Splash2V2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InfoWidget(
      returnedWidget: (context, deviceInfo) {
        return Container(
          height: deviceInfo.screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "assets/images/intro_backgroundv2.png"
              )
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(
                flex: 4,
              ),
              Image.asset("assets/images/Logo_black.png"),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    deviceInfo.screenWidth * 0.15,
                    0,
                    deviceInfo.screenWidth * 0.15,
                    0),
                child: Text(
                  "The Right Address For Shopping Anyday",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        letterSpacing: 1.5),
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    deviceInfo.screenWidth * 0.2,
                    0,
                    deviceInfo.screenWidth * 0.2,
                    0),
                child: Text(
                  "It is now very easy to reach the best quality among all the products on the internet!",
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    minWidth: deviceInfo.screenWidth * 0.6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            color: MAIN_COLOR, width: 2)),
                    color: MAIN_COLOR,
                    onPressed: () {
                      shiftByReplacement(context, RegisterV2());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15 , bottom: 15),
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  FlatButton(
                    minWidth: deviceInfo.screenWidth * 0.6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color(0xffF5F8FA),
                    onPressed: () {
                      shiftByReplacement(context, LoginV2());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15 , bottom: 15),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        );
      },
    ));
  }
}

