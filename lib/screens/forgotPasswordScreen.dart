import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';


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
      home: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
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
                          margin: EdgeInsets.all(10),
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
            ),
    ),
          ),
        ),
      ),
      );

  }
}