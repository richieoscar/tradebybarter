import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/screens/antiques.dart';
import 'package:trade_by_barter/screens/booksScreen.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';
import 'package:trade_by_barter/screens/category_screen.dart';
import 'package:trade_by_barter/screens/computingScreen.dart';
import 'package:trade_by_barter/screens/fashion.dart';
import 'package:trade_by_barter/screens/forgotPasswordScreen.dart';
import 'package:trade_by_barter/screens/homepageScreen.dart';
import 'package:trade_by_barter/screens/myItemScreen.dart';
import 'package:trade_by_barter/screens/nearbyPeopleScreen.dart';
import 'package:trade_by_barter/screens/pin-code.dart';
import 'package:trade_by_barter/screens/reset_password.dart';
import 'package:trade_by_barter/screens/trade_page_upload.dart';
import 'package:trade_by_barter/screens/trade_screen.dart';
import 'package:trade_by_barter/screens/verificationScreen.dart';
import 'screens/onboardScreen.dart';
import 'screens/trade_item_screen.dart';
import 'screens/filterScreen.dart';

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

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 5,
        ), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/splashscreenimage.png"),
                fit: BoxFit.fill)),
      ),
    ));
  }
}
