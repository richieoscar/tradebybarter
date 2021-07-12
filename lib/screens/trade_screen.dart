import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';

class Trade extends StatefulWidget {
  @override
  _TradeState createState() => _TradeState();
}

class _TradeState extends State<Trade> {
  //MAKING THE API CALL HERE
  var future = ApiNetworkingManager.getItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Trade's List",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      // ignore: missing_return
      body: FutureBuilder<List<Item>>(
          builder: (context, snapshot) {
            return Text(snapshot.hasData.toString());
            //SNAPSHOT DOESNT HAVE DATA
          },
          future: future),
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
