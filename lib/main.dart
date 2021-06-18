import 'dart:async';

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

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
            builder:(context) => WelcomeScreen(),
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
