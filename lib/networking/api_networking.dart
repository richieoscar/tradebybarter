import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/models/User.dart';
import 'package:trade_by_barter/models/auth.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/screens/login-screen.dart';

import '../constants.dart';

class ApiNetworkingManager {
  static const SIGN_UP_URL = "https://trade-app-zuri.herokuapp.com/register/";
  static const LOGIN_URL =
      "https://trade-app-zuri.herokuapp.com/auth/token/login";
  static const LOGOUT_URL = "https://trade-app-zuri.herokuapp.com/token/logout";
  static const IS_LOGGED_IN_URL =
      "https://trade-app-zuri.herokuapp.com/auth/users/me";
  static const ACTIVATE_USER =
      "https://trade-app-zuri.herokuapp.com/auth/users/activation/";
  static const CREATE_ITEM =
      "https://trade-app-zuri.herokuapp.com/item-create/";
  static const ALL_ITEMS = "https://trade-app-zuri.herokuapp.com/item-all";

  static SharedPreferences _sharePref;
  static SharedPreferences _userPref;
  static SharedPreferences _token;
  static SharedPreferences _userIdPref;
  static String _userName;
  static String _userEmail;

  static String getUsername() {
    return _userName = _userPref.getString("username");
  }

  static String getUserEmail() {
    return _userEmail;
  }

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
        "phone_number": user.phone,
        "password": user.password,
        "re_password": user.rePassword,
      }),
    );
    if (response.statusCode == 201) {
      print("user created");
      var obj = jsonDecode(response.body);
      User signUpuser = User.fromJson(obj);
      int id = signUpuser.userId;
      print("user id $id");

     // _userPref.setString("username", signUpuser.username);
      _userName = user.username;
      _userEmail = signUpuser.email;
      _userIdPref = await SharedPreferences.getInstance();
      _userIdPref.setInt("userId", id);
      String token = _token.getString("tokKey");
    } else {
      print("not successful");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
      Fluttertoast.showToast(
          msg: response.body,
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: KProceedColor);
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
      _token.setString("tokKey", userToken.authToken);
      AppNavigator.navigateToLauncherScreen(context);
    } else {
      print("not successful");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
      Fluttertoast.showToast(
          msg: "Invalid Login Details",
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: KProceedColor);
    }
  }

  static Future<User> loggedInUser() async {
    var token = _token.getString("tokKey");
    final response = await http.get(
      Uri.parse(IS_LOGGED_IN_URL),
      headers: <String, String>{
        'Authorization': 'Token $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      print(response.body);
      print("user is logged in");
      var user =  User.fromJson(jsonDecode(response.body));
      return user;
    } else {
      print("User is not Logged In");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
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
      Fluttertoast.showToast(
          msg: "Logged Out",
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: KProceedColor);
    } else {
      print("User is not logged out");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
    }
  }

  static Future<http.Response> verifyUSer(
      String id, String token, BuildContext context) async {
    print(token);
    print(id);
    final response = await http.post(
      Uri.parse(ACTIVATE_USER),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{"uid": id.toString(), "token": token}),
    );

    if (response.statusCode == 200) {
      print("user is activated");
      AppNavigator.navigateToLoginScreen(context);
      Fluttertoast.showToast(
          msg: "Your Account has been Activated",
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.green);
    } else {
      print("Account not activated");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
    }
  }

//FROM HERE WE HAVE API METHODS FOR THE ITEMS
  static Future<Dio> createItem(Item item, BuildContext context) async {
    var formData = FormData.fromMap({
      "item_name": item.itemName,
      "price": item.price,
      "category": item.category,
      "desription": item.description,
      //"image": MultipartFile.fromFile(item.image.path, filename: "Image", contentType: new MediaType("image", "jpeg")),
      "author": item.author,
      "item_of_exchange": item.itemOfExchange
    });

    var response = await Dio().post(CREATE_ITEM,
        data: formData,
        options: Options(headers: {
          'Content-Type': 'multipart/form-data; charset=UTF-8',
        }, responseType: ResponseType.json));
    if (response.statusCode == 201) {
      print("item created");
    } else {
      print("Data:  ${response.data}");
      print("Code:  ${response.statusCode}");
      print("Message:  ${response.statusMessage}");
    }
  }

  static Future<http.Response> createItem2(
      Item item, BuildContext context) async {
    var uri = Uri.parse(CREATE_ITEM);
    var request = http.MultipartRequest(
      'POST',
      uri,
    )
      ..fields['item_name'] = item.itemName
      ..fields['price'] = item.price.toString()
      ..fields['category'] = item.category
      ..fields['description'] = item.description
      ..files.add(await http.MultipartFile.fromPath('image', item.image,
          contentType: MediaType('image', 'jpeg')))
      ..fields['author'] = item.author.toString()
      ..fields['item_of_exchange'] = item.itemOfExchange;
    var response = await request.send();

    if (response.statusCode == 201) {
      print("Item Created");
      print("Response:  ${response.toString()}");
      AppNavigator.navigateToTradeList(context);
    } else {
      print("Item not created");
      print(response.reasonPhrase);
      print(response.statusCode);
    }
  }

  static Future<List<Item>> getItems() async {
    var response = await http.get(
      Uri.parse(ALL_ITEMS),
       headers: <String, String>{
        'Content-Type': 'application/json',
       },
    );
    if (response.statusCode == 200) {
      print(response.body);
      var json = jsonDecode(response.body) as List;
        return json.map((item) => Item.fromJson(item)).toList();
    }
     else {
      print("Could not get items");
      print(response.statusCode);
      print(response.body);
      print(response.contentLength);
      // AppNavigator.navigateToLoginScreen(context);
    }
  }
}
