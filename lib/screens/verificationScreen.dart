import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key key}) : super(key: key);
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/verificationbg.png'),
                      fit: BoxFit.cover)),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120,),
                    Container(

                      child: Center(
                        child: Column(

                          children: [
                            Container(
                              child: Text("Verification Code", style: KPageViewTextStyle,),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "eunice@gmail.com",
                              style: KVerEmail,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 5,
                      onChanged: (value) {
                        print(value);
                      },
                      enableActiveFill: true,
                      showCursor: false,
                      pinTheme: PinTheme(
                          inactiveFillColor: Colors.grey[100],
                          selectedFillColor: Colors.grey[100],
                          activeFillColor: Colors.grey[100],
                          activeColor: Color(0xFFA60000),
                          inactiveColor: Colors.grey[200],
                          shape: PinCodeFieldShape.box,
                          fieldHeight: 50,
                          fieldWidth: 50,
                          borderRadius: BorderRadius.circular(5.0),
                          selectedColor: Colors.amberAccent),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.all(20),
                    constraints: BoxConstraints.expand(width: 500, height: 40),
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(KfilterBorderColors),
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
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),

                    SizedBox(height:40),

                   Container(
                     margin: EdgeInsets.all(20),
                     constraints: BoxConstraints.expand(width: 500, height: 40),
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
                             color:  const Color(0xFFFFFFFF) ,
                             fontWeight: FontWeight.w500,
                             fontSize: 15),
                       ),
                     ),
                   ),
                    SizedBox(height:20),

                    Center(
                      child: Container(
                          child: GestureDetector(
                        child: Text("Click here to resend",
                            style: TextStyle(
                              color: const Color(0xFFE0BF0F),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )),
                        onTap: () {},
                      )),
                    ),

                SizedBox(height: 100)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
