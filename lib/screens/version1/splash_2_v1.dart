import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kleine_app/constants/colors.dart';
import 'package:kleine_app/functions/navigation_funs.dart';
import 'package:kleine_app/functions/responsive_ui/info_widget.dart';
import 'login_v1.dart';
import 'register_v1.dart';

class Splash2V1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InfoWidget(
          returnedWidget: (context, deviceInfo) {
            return Stack(
              children: [
                Image.asset(
                  "assets/images/Register&Login v1 – 1.png",
                  fit: BoxFit.cover,
                  height: deviceInfo.screenHeight,
                  width: deviceInfo.screenWidth,
                ),
                Container(
                  height: deviceInfo.screenHeight,
                  width: deviceInfo.screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: deviceInfo.screenHeight * 0.5,
                      ),
                      Container(
                        height: deviceInfo.screenHeight * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  minWidth: deviceInfo.screenWidth * 0.3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                          color: MAIN_COLOR, width: 2)),
                                  color: MAIN_COLOR,
                                  onPressed: () {
                                    shiftByReplacement(context, RegisterV1());
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                FlatButton(
                                  minWidth: deviceInfo.screenWidth * 0.3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  color: Color(0xffF5F8FA),
                                  onPressed: () {
                                    shiftByReplacement(context, LoginV1());
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
