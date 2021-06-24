import 'package:flutter/material.dart';

class Trade extends StatefulWidget {
  @override
  _TradeState createState() => _TradeState();
}

class _TradeState extends State<Trade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Center(
      //     child: Text(
      //       "Trader's List",
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      body: Column(
        children: [
          SizedBox(height: 50),
          text("Trader's List"),

          Container(
            height: 500,
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
                  height: 10.0,
                ),
                imageRow(
                    "images/populardemand6.png", "images/populardemand2.png"),
                imageRow(
                    "images/populardemand6.png", "images/populardemand6.png"),
                imageRow(
                    "images/populardemand6.png", "images/populardemand5.png"),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          button(),
        ],
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
              width: 110.0,
            ),
          ),
          SizedBox(
            width: 25.0,
          ),
          Container(
            child: Image.asset(
              image1,
              width: 110.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget text(String text){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Text(text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      )
    );
  }

  Widget button() {
    return Container(
      width: 200.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
        ),
        onPressed: _proceed(),
        child: Text(
          "Proceed",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _proceed() {}
}
