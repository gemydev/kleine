import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kleine_app/constants/colors.dart';
import 'package:kleine_app/functions/navigation_funs.dart';
import 'package:kleine_app/functions/responsive_ui/info_widget.dart';
import 'splash_2_v2.dart';

class Splash1V2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: InfoWidget(
      returnedWidget: (context, deviceInfo) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/Splash1v2.png")
            )
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.35,
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
                        fontSize: 30,
                        letterSpacing: 1.5),
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    deviceInfo.screenWidth * 0.2,
                    10,
                    deviceInfo.screenWidth * 0.2,
                    0),
                child: Text(
                  "It is now very easy to reach the best quality among all the products on the internet!",
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 14,
                    letterSpacing: 1.2,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Center(
                  child: FlatButton(
                    minWidth: deviceInfo.screenWidth * 0.3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            color: MAIN_COLOR, width: 2)),
                    color: MAIN_COLOR,
                    onPressed: () {
                      shiftByReplacement(context, Splash2V2());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}

