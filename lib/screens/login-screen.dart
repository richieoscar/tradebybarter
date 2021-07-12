import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

import '../constants.dart';
import '../models/login-model.dart';
// import '../helpers/validators.dart';

class LoginScreen extends StatefulWidget {
  final _user = new LoginUser();

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  bool _obscureText = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _show = false;
  String _emailError = "Email is required";
  String _passwordError = "Password is required";
  bool _visbile = false;

  load() {
    if (_show == false) {
      setState(() {
        _show = true;
      });
    } else {
      setState(() {
        _show = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(
                    child: Container(
                      width: 292.0,
                      height: 176.0,
                      child: Hero(
                        tag: "Sign in image",
                        child: Image.asset("images/login.png"),
                      ),
                    ),
                    left: 49.0,
                    top: 111.0,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Email Address',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey[300])),
                    height: 50,
                    child: TextField(
                      controller: emailController,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black54,
                      cursorHeight: 30,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Visibility(
                      visible: _visbile,
                      child: Text(
                        _emailError,
                        style: TextStyle(color: KBrandColors, fontSize: 10.0),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey[300])),
                    height: 50,
                    child: TextField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      textInputAction: TextInputAction.done,
                      cursorHeight: 30,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey[300],
                          ), 
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                      visible: _visbile,
                      child: Text(_passwordError,
                          style:
                              TextStyle(color: KBrandColors, fontSize: 10.0))),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(

                            value: false,
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      GestureDetector(
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                          onTap: () =>
                              AppNavigator.navigateToForgotPasswordScreen(
                                  context))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 40,
                      child: (OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(KfilterBorderColors),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        onPressed: () {
                          load();
                          print('Proceed clicked');
                          var email = emailController.text;
                          var password = passwordController.text;
                          if (email.isEmpty) {
                            setState(() {
                              _visbile = true;
                              _show = false;
                            });
                            return;
                          }
                          if (password.isEmpty) {
                            setState(() {
                              _visbile = true;
                              _show = false;
                            });
                            return;
                          }
                          ApiNetworkingManager.loginUser(
                                  email, password, context)
                              .whenComplete(() => setState(() {
                                    _show = false;
                                  }));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text(
                          "New User? Register your Account Now",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                          ),
                        ),
                        onTap: () =>
                            AppNavigator.navigateToSignUpScreen(context),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 18.0,
                        color: Color(0xFFA60000),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  showProgressBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget hideProgressBar() {
    return Visibility(
      visible: false,
      child: CircularProgressIndicator(),
    );
  }

  Widget showProgressBar() {
    return Center(
      child: Visibility(
        visible: _show,
        child: CircularProgressIndicator(
          //color: KfilterBorderColors,
        ),
      ),
    );
  }
}
