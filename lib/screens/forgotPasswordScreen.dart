import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';


class ForgotPasswordScreen extends StatefulWidget{
  const ForgotPasswordScreen({Key key}) : super(key: key);
  @override

  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();

}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage("images/verificationbg.png"), fit: BoxFit.cover)),
          child: Scaffold(
                backgroundColor: Colors.transparent,
                   // backgroundColor: Image.asset('images/verificationbg.png').color,
              body: Padding(padding: EdgeInsets.all(20),
                child: SafeArea(

            child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:100),

                  Container(
                    child: Text("Forgot Password", style: KPageViewTextStyle,),
                  ),
                  SizedBox(height:20),
                  Container(

                    child: Padding(
                      padding: EdgeInsets.all(10),
                    child: Text("Enter your phone number", style: KForgotPassword,),
                    ),
                  ),

                  SizedBox(height:10),
                  Container(
                    width: 350,
                    child:
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                        ),
                      ),

                  ),

                  SizedBox(height: 60,),

                  Container(
                    constraints: BoxConstraints.tightFor(width: 500, height: 40),
                    child:OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(KfilterBorderColors ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      onPressed: () {
                        print('Next clicked');
                        AppNavigator.navigateToWelcomeScreen(context);
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color:  Colors.white ,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height:10),


                  SizedBox(height: 50)
                ],
            )),
              ),
      ),
    ),
      );

  }
}