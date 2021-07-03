import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/models/User.dart';
import 'package:trade_by_barter/models/auth.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

class ApiNetworkingManager {
  static const SIGN_UP_URL = "https://trade-app-zuri.herokuapp.com/auth/users/";
  static const LOGIN_URL =
      "https://trade-app-zuri.herokuapp.com/auth/token/login";
  static const LOGOUT_URL = "https://trade-app-zuri.herokuapp.com/token/logout";
  static const IS_LOGGED_IN_URL =
      "https://trade-app-zuri.herokuapp.com/auth/users/me";

  static SharedPreferences _sharePref;
  static SharedPreferences _userPref;
  static SharedPreferences  _token;

  static Future<http.Response> signUpUser(
      User user, BuildContext context) async {
    final response = await http.post(
      Uri.parse(SIGN_UP_URL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "username": user.username,
        "full_name": user.fullName,
        "email": user.email,
        "phone": user.phone,
        "password": user.password,
        "re_password": user.rePassword
      }),
    );
    if (response.statusCode == 201) {
      print("user created");
      _userPref = await SharedPreferences.getInstance();
      _userPref.setString("username", user.username);
      print(_userPref.getString("username"));
      AppNavigator.navigateToVerificationScreen(context);
    } else {
      print("not successful");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
    }
  }

  static Future<http.Response> loginUser(
      String email, String password, BuildContext context) async {
    final response = await http.post(
      Uri.parse(LOGIN_URL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );
    if (response.statusCode == 200) {
      print("user Logged in");
      _token = await SharedPreferences.getInstance();
      var ob = jsonDecode(response.body);
      Auth userToken = Auth.fromJson(ob);
      print(userToken.authToken);
      _token.setString("tokKey", userToken.authToken );
      AppNavigator.navigateToLauncherScreen(context);
    } else {
      print("not successful");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
    }
  }

  static Future<User> loggedInUser(BuildContext context) async {
    var token = _token.getString("token");
    final response = await http.get(
      Uri.parse(IS_LOGGED_IN_URL),
      headers: <String, String>{
        'Authorization' : 'Token $token',
            'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      print(response.body);
      return User.fromJson(jsonDecode(response.body));
    } else {
      print("User is not Logged In");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
      AppNavigator.navigateToLoginScreen(context);
    }
  }

  static Future<http.Response> logOut(BuildContext context) async {
    String token = _token.getString("tokKey");
    print(token);
    final response = await http.post(
      Uri.parse(LOGOUT_URL),
      headers: <String, String>{
        'Authorization': 'Token $token',
            'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 204) {
      print("user is logout");
      AppNavigator.logOut(context);
    } else {
      print("User is not logged out");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
    }
  }
}
