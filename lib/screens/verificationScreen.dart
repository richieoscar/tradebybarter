import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key key}) : super(key: key);
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String _email;

  var _verifyController = TextEditingController();
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
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Container(
                            child: Text(
                              "Activate Account",
                              style: KPageViewTextStyle,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.email, size:50, color: KBrandColors,),
                                 SizedBox(height: 30),
                                Text(
                                  "We have sent a verification link to Your Email",
                                  style: KVerText,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Kindly Click the link to Activate your Account",
                                  style: KVerText,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                         
                  
                        ],
                      ),
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
                      onPressed: (){
                        
                          // SharedPreferences pref  =  await SharedPreferences.getInstance();
                          // String token  = pref.getString("tokKey");
                          // int id  = pref.getInt("userId");
                          // print(token);
                          // print(id);
                          // String userid = id.toString();
                         // ApiNetworkingManager.verifyUSer(userid ,token, context);
            
                        print('Go To Login');
                        AppNavigator.navigateToLoginScreen(context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
    );
  }
}
