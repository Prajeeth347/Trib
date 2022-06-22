import 'package:flutter/material.dart';
import 'package:trib/intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
          home: IntroScreen(), //load intro screen
    );
  }
}