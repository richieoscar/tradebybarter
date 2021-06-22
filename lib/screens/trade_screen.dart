import 'package:flutter/material.dart';

class Trade extends StatefulWidget {
  @override
  _TradeState createState() => _TradeState();
}

class _TradeState extends State<Trade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100.0,),
            Text(
              "Traders List",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    constraints: BoxConstraints.expand(
                        height:100.0,
                    ),
                    child: Image.asset(
                      "images/populardemand4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    constraints: BoxConstraints.expand(
                  height: 100.0
                    ),
                    child: Image.asset(
                      "images/populardemand2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
