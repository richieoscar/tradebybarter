import 'package:flutter/material.dart';
import 'package:trade_by_barter/screens/onboardScreen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(child: OnBoardScreen()),
            Text("Skip"),
            SizedBox(height: 20,),
           /* FlatButton(
              color: Color(0xffa60000),
              child: Text('Skip'),
              onPressed: (){},
            ),*/
            Text('Skip'),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}