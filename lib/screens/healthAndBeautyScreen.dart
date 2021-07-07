import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:trade_by_barter/constants.dart';

void main() async {
  runApp(HealthandBeautyPage());
}

class HealthandBeautyPage extends StatefulWidget {
  @override
  _HealthandBeautyPageState createState() => _HealthandBeautyPageState();
}

class _HealthandBeautyPageState extends State<HealthandBeautyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => {},
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Health & Beauty",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              item("Beauty Supplements"),
              item("Body Care"),
              item("Carrier Oils"),
              item("Facial Care"),
              item("Hair Care"),
              item("Speciality & Seasonal Care"),
            ],
          ),
        ),
      ),
    );
  }
}

//Widget for each Health and Beauty Item
Widget item(String title) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 350,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: KBrandColors,
                width: 1.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "$title",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ),
    ),
  );
}
