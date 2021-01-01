import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kleine_app/constants/colors.dart';
import 'package:kleine_app/functions/navigation_funs.dart';
import 'package:kleine_app/functions/responsive_ui/info_widget.dart';
import 'splash_2_v1.dart';

class Splash1V1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: InfoWidget(
      returnedWidget: (context, deviceInfo) {
        return Column(
          children: [
            Container(
              height: deviceInfo.screenHeight * 0.5,
              child: Image.asset(
                "assets/images/Phone And BG V1.png",
                width: deviceInfo.localWidth,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: deviceInfo.screenHeight * 0.5,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 4,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(deviceInfo.screenWidth * 0.1,
                        0, deviceInfo.screenWidth * 0.1, 0),
                    child: Text(
                      "The Right Address For Shopping Anyday",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
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
                    padding: EdgeInsets.fromLTRB(deviceInfo.screenWidth * 0.2,
                        0, deviceInfo.screenWidth * 0.2, 0),
                    child: Text(
                      "It is now very easy to reach the best quality among all the products on the internet!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  FlatButton(
                    minWidth: deviceInfo.screenWidth * 0.24,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: MAIN_COLOR, width: 2)),
                    color: Colors.transparent,
                    onPressed: (){
                      shiftByReplacement(context, Splash2V1());
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Color(0xff000DAE)),
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                ],
              ),
            )
          ],
        );
      },
    ));
  }
}

