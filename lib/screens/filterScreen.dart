import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'bottom_nav_bar.dart';

//void main() => runApp(const FilterScreen());

/// This is the stateless widget that the main application instantiates.
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Text(
                "Select Filter",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(height: 70),
              Container(
                // height: 200,
                child: myLayoutWidget(),
              ),
              SizedBox(height: 60),
              Container(
                width: 200,
                child: (OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(KProceedColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                  ),
                  onPressed: () {
                    print('Proceed clicked');
                  },
                  child: Text(
                    "Proceed",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

Widget myLayoutWidget() {
  return SingleChildScrollView(
    child: (Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        outlineButton("By Category"),
        outlineButton("By Location"),
        outlineButton("By Popular Demand"),
        outlineButton("By NearBy People"),
      ],
    )),
  );
}

Widget outlineButton(String text) {
  return (Container(
      margin: EdgeInsets.all(20),
      constraints: BoxConstraints.expand(width: 500, height: 60),
      child: OutlinedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(KfilterRectangles),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0))),
            side: MaterialStateProperty.all(
                BorderSide(color: Color(0xffa60000), width: 1.0))),
        onPressed: () {
          print('By Popular Demand Clicked');
        },
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20),
        ),
      )));
}
