import 'package:flutter/material.dart';
import 'package:loginsignup2/Screen/Welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: WelcomeScreen()
      ),
    );
  }
}