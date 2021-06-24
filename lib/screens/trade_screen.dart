import 'package:flutter/material.dart';
import 'bot'

class Trade extends StatefulWidget {
  @override
  _TradeState createState() => _TradeState();
}

class _TradeState extends State<Trade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Trader's List",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 500,
        alignment: Alignment.topLeft,
        margin: EdgeInsets.fromLTRB(10, 50.0, 20.0, 0.0),
        decoration: BoxDecoration(shape: BoxShape.rectangle, boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(5.0, 5.0),
            blurRadius: 1.0,
            spreadRadius: 2.0,
          ),
        ]),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            imageRow("images/populardemand6.png", "images/populardemand2.png"),
            imageRow("images/populardemand6.png", "images/populardemand1.png"),
            imageRow("images/populardemand6.png", "images/populardemand5.png")
          ],
        ),
      ),
    );
  }

  Widget imageRow(String image1, String image2) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              image1,
              width: 100.0,
            ),
          ),
          SizedBox(
            width: 25.0,
          ),
          Container(
            child: Image.asset(
              image2,
              width: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
