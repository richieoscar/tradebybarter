 import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/screens/filterScreen.dart';

import 'screens/onboardScreen.dart';
import 'screens/trade_item_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: SplashScreen(),

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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/splashscreenimage.png"), fit: BoxFit.fill)),
        ),
      )
      );
  }

}
