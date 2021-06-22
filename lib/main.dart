 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trade_by_barter/screens/registerScreen.dart';
import 'package:trade_by_barter/screens/welcomeScreen.dart';
import 'screens/onboardScreen.dart';
import 'screens/trade_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Trade(),
    );
  }
}

class SplashScreen extends StatefulWidget{
  @override
 _SplashScreenState createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 5,
      ),(){
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder:(context) => OnBoardScreen(),
        ));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "logo",
          child: Image.asset("images/logo.png"))
        )
      );
  }

}
