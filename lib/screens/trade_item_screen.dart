import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final item = ModalRoute.of(context).settings.arguments as Item;
    print(item.itemName);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => AppNavigator.navigateBack(context),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Detail",
          style:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),

      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50.0),
              itemImage(item.image),
              SizedBox(height: 40.0),
              itemDetail(item.itemName),
              itemDetail("Value: ${item.price.toString()}"),
              itemDetail(item.description),
              itemDetail("Exchange For: ${item.itemOfExchange}"),
              SizedBox(height: 30.0),
              proceedButton(),
            ],
          ),
        ),
      ),
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
      child: Card(
        child: Container(
          constraints: BoxConstraints.expand(width: 200, height: 200),
          decoration: BoxDecoration(shape: BoxShape.rectangle,
              border: Border.all(color: Color(0xffa60000), width: 3),
              borderRadius: BorderRadius.circular(10),
              ),
          child: Image.network(
            imagePath,
            fit: BoxFit.fill,
          ),
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
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
