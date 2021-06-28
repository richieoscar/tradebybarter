import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/models/User.dart';
import 'package:trade_by_barter/navigation/navigation.dart';


class ApiNetworkingManager{

  static const  SIGN_UP_URL = "https://trade-app-zuri.herokuapp.com/auth/users/";
  static const  LOGIN_URL = "https://trade-app-zuri.herokuapp.com/auth/token/login";
  static const LOGOUT_URL = "https://trade-app-zuri.herokuapp.com/token/logout";
  static const IS_LOGGED_IN_URL = "https://trade-app-zuri.herokuapp.com/auth/users/m";

  static SharedPreferences _sharePref;

  static Future<http.Response> signUpUser(String username, String firstname, String lastname, String email, String phone, String password, String repassword, BuildContext context) async {
    final response = await http.post(
      Uri.parse(SIGN_UP_URL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "username": username,
        "first_name" : firstname,
        "last_name" : lastname,
        "email" : email,
        "phone": phone,
        "password": password,
        "re_password": repassword
      }),
    );
   if (response.statusCode == 201){
     print("user created");
     AppNavigator.navigateToLauncherScreen(context);
   }
   else {
     print("not successful");
     print(response.statusCode);
     print(response.body);
     print(response.contentLength);
   }
  }

  static Future<http.Response> loginUser(String email, String password, BuildContext context) async{
    final response = await http.post(
      Uri.parse(LOGIN_URL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email" : email,
        "password": password
      }),
    );
    if (response.statusCode == 200){
      print("user Logged in");
    _sharePref = await SharedPreferences.getInstance();
      _sharePref.setString("auth_token", response.body);
      AppNavigator.navigateToLauncherScreen(context);

    }
    else {
      print("not successful");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
    }
  }

  static Future<http.Response> isUserLoggedIn( BuildContext context) async{
    final response = await http.post(
      Uri.parse(IS_LOGGED_IN_URL),
      headers: <String, String>{
        'Authorization: Token ${_sharePref.getString("auth_token")}'
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200){
      print(response.body);
    }
    else {
      print("User is not Logged In");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
      AppNavigator.navigateToLoginScreen(context);
    }
  }

  static Future<http.Response> logOut(BuildContext context) async{
    String token = "Token " +_sharePref.get("auth_token");
    print("SharedPref" +_sharePref.get("auth_token"));
    final response = await http.post(
      Uri.parse(LOGOUT_URL),
     headers: {
        "Authorization" : token
     }
    );
    if (response.statusCode == 204){
      print("user is logout");
      AppNavigator.navigateToLoginScreen(context);
    }
    else {
      print("User is not logged out");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);

    }
  }

}
