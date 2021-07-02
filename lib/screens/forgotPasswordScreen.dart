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
      home: Scaffold(
        body: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                    child: Container(

                        height: 60,
                        width: 200,
                        alignment: Alignment.topRight,

                        child:

                              Image.asset("images/logo.png", //fit: BoxFit.fill
                                ),
                            ),),


                  //alignment: Alignment.topRight,),,

                SizedBox(height:20),

                Container(
                  child: Text("Forgot Password", style: KPageViewTextStyle,),
                ),
                SizedBox(height:20),
                Container(
                  child: Text("Enter your phone number", style: KForgotPassword,),
                ),

                SizedBox(height:20),
                Container(
                  child: Padding(
                    padding:EdgeInsets.all(20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.all(20),
                  constraints: BoxConstraints.tightFor(width: 500, height: 60),
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
                          color:  const Color(0xFFE0BF0F) ,
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
    );

  }
}