import 'package:flutter/cupertino.dart';
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Positioned(
                    child:  Container(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: false,),
                          Text("Remember Me",  style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                          ),
                        ],
                      ),
                      GestureDetector(child: Text("Forgot Password",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),),
                      onTap: ()=> AppNavigator.navigateToForgotPasswordScreen(context))
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
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                              ),
                        onPressed: () {
                          print('Proceed clicked');
                          var email = emailController.text;
                          var password = passwordController.text;

                         // ApiNetworkingManager.loginUser(email, password, context);
                          AppNavigator.navigateToLauncherScreen(context);
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
                        onTap:()=> AppNavigator.navigateToSignUpScreen(context),
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
      ),
    );
  }
}
