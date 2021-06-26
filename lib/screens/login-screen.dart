import 'package:flutter/material.dart';
import 'package:trade_by_barter/components/remember-me.dart';
import '../components/button-component.dart';
import '../components/password-input-component.dart';
import '../components/text-input-component.dart';
import '../models/login-model.dart';
// import '../helpers/validators.dart';

class LoginScreen extends StatelessWidget {
  final _user = new LoginUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
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
                  height: 15,
                ),
                TextInputComponent(
                  user: _user,
                  label: "Email Address",
                ),
                PasswordInputComponent(label: "Password", user: _user),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RememberMe(user: _user),
                    TextButton(
                      onPressed: () {
                        // navigation logic here
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 9.0,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonComponent(
                  label: "Log in",
                  textColor: Colors.white,
                  bgColor: Color.fromRGBO(166, 0, 0, 1),
                  height: 36,
                  width: 173,
                  borderRadius: 16.0,
                  function: () {
                    print(_user.email);
                    print(_user.password);
                    print(_user.rememberMe);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User? Register your Account Now",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontSize: 9.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18.0,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
