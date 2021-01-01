import 'package:flutter/material.dart';
import 'screens/version2/screens_v2.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kleine',
      debugShowCheckedModeBanner: false,
      home: Splash1V2(),
    );
  }
}


