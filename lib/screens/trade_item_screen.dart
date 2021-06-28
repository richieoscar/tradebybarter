import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: Launcher(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.0),
            textTitle("Item Detail"),
            SizedBox(height: 30.0),
            itemImage("images/populardemand4.png"),
            SizedBox(height: 40.0),
            itemDetail("Product Name: MUL PURSE"),
            itemDetail("Product value: 200"),
            itemDetail("Product Description:"),
            itemDetail("Product Condition: Ok"),
            SizedBox(height: 30.0),
            proceedButton(),
          ],
        ),
      ),
    );
  }

  Widget textTitle(String text) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )
    );
  }

  Widget proceedButton() {
    return Container(
      width: 200,
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
        ),
        // color: Color(0xffa60000),
        child: Text(
          'Proceed',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget itemImage(String imagePath) {
    return Center(
      child: Container(
        width: 150,
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: BoxDecoration(shape: BoxShape.rectangle,
            border: Border.all(color: Color(0xffa60000), width: 3),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(5.0, 5.0),
            blurRadius: 1.0,
            spreadRadius: 2.0,
          ),
        ]),
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget itemDetail(String text) {
    return Center(
      child: Container(
          width: 350,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          )),
    );
  }
}
