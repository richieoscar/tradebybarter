import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';


class VerifyScreen extends StatefulWidget{
  const VerifyScreen({Key key}) : super(key: key);
  @override

  _VerifyScreenState createState() => _VerifyScreenState();

}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(
                    child: Container(
                      height: 400,
                      width: 600,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset("images/logo.png", fit: BoxFit.fill,),
                          ),

                        ],
                      )
                      //alignment: Alignment.topRight,),
                    )
                ),
                SizedBox(height:20),

                   Container(
                     child: Text("Verification Code", style: KPageViewTextStyle,),
                   ),
                SizedBox(height:20),
                Container(
                child: Text("We have sent a verification code to", style: KVerText,),
                  ),
                SizedBox(height:10),
                Container(
                  child: Text("&email", style: KVerEmail, ),
                ),
                SizedBox(height:20),
                Expanded(
                  child: Container(

                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      OtpTextField(
                        numberOfFields: 5,
                        borderColor: Color(0xFF512DA8),
                        fieldWidth: 40,
                        fillColor: Colors.white,
                        showFieldAsBox: true, //set to true to show as box or false to show as dash
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        onSubmit: (String verificationCode){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content: Text('Code entered is $verificationCode'),
                                );
                              }
                          );
                        }, // end onSubmit
                      ),
                    ],
                    ),
                  ),
                ),
                SizedBox(height:50),


                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(35),
                    constraints: BoxConstraints.expand(width: 500, height: 60),
                    child:OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(KfilterBorderColors ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      onPressed: () {
                        print('verify clicked');
                        AppNavigator.navigateToWelcomeScreen(context);
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                            color:  const Color(0xFFE0BF0F) ,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  ),
                SizedBox(height:10),

                Expanded(child:
                Container(
                  child: GestureDetector(
                    child: Text("Click here to resend", style: TextStyle(
                      color:  const Color(0xFFE0BF0F) , fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,)
                  ),
                    onTap: (){},
                )),),
            SizedBox(height: 50)
              ],
            )),
      ),
    );

  }
  }