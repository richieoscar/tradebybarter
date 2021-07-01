import 'package:flutter/material.dart';
import 'package:trade_by_barter/components/remember-me.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
import '../components/button-component.dart';
import '../components/password-input-component.dart';
import '../components/text-input-component.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  'Email',
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
                      border: Border.all(color: Color(0xFFA60000))),
                  height: 40,
                  child: TextField(
                    controller: emailController,
                    textInputAction: TextInputAction.done,
                    autofocus: true,
                    cursorColor: Colors.black54,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      border: Border.all(color: Color(0xFFA60000))),
                  height: 40,
                  child: TextField(
                    controller: passwordController,
                    obscureText: _obscureText,
                    textInputAction: TextInputAction.done,
                    autofocus: true,
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
                          color: Color(0xfffCE302),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 200,
                    child: (OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(KfilterBorderColors),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                      ),
                      onPressed: () {
                        print('Proceed clicked');
                        var email = emailController.text;
                        var password = passwordController.text;
                        ApiNetworkingManager.loginUser(
                            email, password, context);
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
                  height: 10,
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
                      color: Color(0xFFA60000),
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
