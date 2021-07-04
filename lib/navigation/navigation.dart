import 'package:flutter/material.dart';
import 'package:trade_by_barter/main.dart';
import 'package:trade_by_barter/models/product_model.dart';
import 'package:trade_by_barter/screens/add_photos_screen.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';
import 'package:trade_by_barter/screens/category_screen.dart';
import 'package:trade_by_barter/screens/faqScreen.dart';
import 'package:trade_by_barter/screens/filterScreen.dart';
import 'package:trade_by_barter/screens/forgotPasswordScreen.dart';
import 'package:trade_by_barter/screens/homepageScreen.dart';
import 'package:trade_by_barter/screens/login-screen.dart';
import 'package:trade_by_barter/screens/nearbyPeopleScreen.dart';
import 'package:trade_by_barter/screens/notification_screen.dart';
import 'package:trade_by_barter/screens/settings_screen.dart';
import 'package:trade_by_barter/screens/signUp.dart';
import 'package:trade_by_barter/screens/signup_login_screen.dart';
import 'package:trade_by_barter/screens/trade_screen.dart';
import 'package:trade_by_barter/screens/verificationScreen.dart';

class AppNavigator {
  static const INITIAL_ROUTE = '/';
  static const WELCOME_ROUTE = '/welcomeScreen';
  static const LOGIN_ROUTE = '/login';
  static const SIGN_UP_ROUTE = '/signUp';
  static const HOME_PAGE_ROUTE = '/homepage';
  static const CATEGORY_ROUTE = '/category';
  static const FILTER_ROUTE = '/filter';
  static const LOCATION_ROUTE = '/location';
  static const NEAR_BY_PEOPLE_ROUTE = '/nearbyPeople';
  static const TRADERS_LIST_ROUTE = '/traderList';
  static const NOTIFICATIONS_ROUTE = '/notifications';

  //The App Navigator supports Named routes and Material page route navigation types

  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void navigateWithArgument(BuildContext context, String routeName,
      String producName, String productVal) {
    Navigator.pushNamed(context, routeName,
        arguments: Product(producName, productVal));
  }

  static void navigateToHomeScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  static void navigateToSplashScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashScreen()));
  }

  static void navigateToWelcomeScreen(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpLoginScreen(),
        ));
  }

  static void navigateToCategoryScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Category()));
  }

  static void navigateToLocationScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Trade()));
  }

  static void navigateToLauncherScreen(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Launcher()));
  }

  static void navigateToNearByPeopleScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NearByPeople()));
  }

  static void navigateToLoginScreen(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  static void navigateToSignUpLoginScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpLoginScreen()));
  }

  static void navigateToSignUpScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
  }


  static void navigateToVerificationScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyScreen()));
  }

  static void logOut(BuildContext context){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  
  }

  static void navigateToFilterScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen()));
  }
  

  static void navigateToSettingsScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Settings()));
  }

  static void navigateToAddPhotoScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddPhotos()));
  }

  static void navigateToNotificationsScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NotificationScreen()));
  }


  static void navigateToFaqScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => FaqScreen()));
  }

  static void navigateToForgotPasswordScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen ()));
  }

  static void navigateBack(BuildContext context){
    Navigator.pop(context, false);
  }

}

