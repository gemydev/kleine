import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hitText;
  final TextEditingController controller;

  const MyTextField({Key key, this.hitText, this.controller}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: focusColor,
      style: TextStyle(
        color: Color(0xff000759),
        fontSize: 18
      ),
      decoration: InputDecoration(
        hintText: widget.hitText,
        hintStyle: TextStyle(
          color: focusColor
        ),
        fillColor: Color(0xffF5F8FA),
        filled: true,
        border: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder,
        focusedBorder: focusBorder,
        contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
      ),
    );
  }

  Color focusColor = Color(0xff97AABD);

  OutlineInputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.white));

  OutlineInputBorder focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Color(0xff97AABD) , width: 2));
}

//#97AABD
