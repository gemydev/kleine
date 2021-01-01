import 'package:flutter/material.dart';
import 'package:kleine_app/constants/colors.dart';
import 'package:kleine_app/functions/navigation_funs.dart';
import 'package:kleine_app/functions/responsive_ui/info_widget.dart';
import 'package:kleine_app/screens/version2/login_v2.dart';
import 'package:kleine_app/widgets/custom_text_form_field.dart';
import '../screens.dart';

class RegisterV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      returnedWidget: (context, deviceInfo) {
        return Stack(
          children: [
            Image.asset("assets/images/intro_backgroundv2.png", fit: BoxFit.cover,
              width: deviceInfo.screenWidth,
              height: deviceInfo.screenHeight,),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: Container(
                    height: deviceInfo.screenHeight,
                    width: deviceInfo.screenWidth,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: deviceInfo.screenWidth * 0.08,
                          right: deviceInfo.screenWidth * 0.08),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Container(
                            height: deviceInfo.screenHeight * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Logo.png",
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset("assets/images/Left Title.png",
                                color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: deviceInfo.screenHeight * 0.55,
                            child: Form(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyTextField(
                                      hitText: "Name",
                                    ),
                                    MyTextField(
                                      hitText: "Email",
                                    ),
                                    MyTextField(
                                      hitText: "Password",
                                    ),
                                    MyTextField(
                                      hitText: "Phone",
                                    ),
                                    FlatButton(
                                      minWidth: deviceInfo.screenWidth * 0.84,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          side: BorderSide(
                                              color: MAIN_COLOR, width: 2)),
                                      color: MAIN_COLOR,
                                      onPressed: () {
                                        shiftByReplacement(context, HomePage());
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 12, bottom: 12),
                                        child: Text(
                                          "Register",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 19),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        shiftByReplacement(context, LoginV2());
                                      },
                                      child: Text(
                                        "go to login page ...",
                                        style: TextStyle(color: MAIN_COLOR),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlatButton(
                                          minWidth: deviceInfo.screenWidth * 0.4,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  5),
                                              side: BorderSide(
                                                  color: Color(0xffF5F8FA),
                                                  width: 2)),
                                          color: Color(0xffF5F8FA),
                                          onPressed: () {
                                            shiftByReplacement(
                                                context, RegisterV1());
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, bottom: 12),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/facebook.png",
                                                  height: 25,
                                                  width: 25,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "Facebook",
                                                  style:
                                                  TextStyle(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        FlatButton(
                                          minWidth: deviceInfo.screenWidth * 0.4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5),
                                          ),
                                          color: Color(0xffF5F8FA),
                                          onPressed: () {
                                            shiftByReplacement(
                                                context, LoginV1());
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, bottom: 12),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/gmail.png",
                                                  height: 25,
                                                  width: 25,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "Gmail",
                                                  style:
                                                  TextStyle(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  )),
            )
          ],
        );
      },
    );
  }
}