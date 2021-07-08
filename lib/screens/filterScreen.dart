import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

import '../constants.dart';
import 'bottom_nav_bar.dart';

class FilterScreen extends StatefulWidget{

  @override
  _FilterState createState() {
    return _FilterState();
  }
}

class _FilterState extends State<FilterScreen> {

  String _filter;
  Color color =KfilterRectangles ;
  Color textColor = Colors.black;
  Color lcolor = KfilterRectangles;
  Color ltextColor = Colors.black;
   Color catcolor = KfilterRectangles;
  Color cattextColor = Colors.black;
   Color popcolor = KfilterRectangles;
  Color poptextColor = Colors.black;
   Color nearcolor = KfilterRectangles;
  Color neartextColor = Colors.black;

   
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(
        child: Text("Select Filter",
          style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () => AppNavigator.navigateBack(context),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
    ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Container(
                // height: 200,
                child: myLayoutWidget(),
              ),
              SizedBox(height: 60),
              Container(
                width: 300,
                height: 40,
                child: (OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all( KProceedColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                  ),
                  onPressed: () {
                    setState(() {
                      apply();
                    });
                    Fluttertoast.showToast(msg: "Filter Selcted",
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.black,
                    toastLength: Toast.LENGTH_SHORT,
                    backgroundColor: KProceedColor
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Apply",
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
     
    );
  }

  void apply()async{
    SharedPreferences filterPref = await SharedPreferences.getInstance();
    filterPref.setString("filter", _filter);
    print(filterPref.getString("filter"));
  }


Widget myLayoutWidget() {
  return SingleChildScrollView(
    child: (Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        categoryButton("By Category"),
        locationButton("By Location"),
        popularButton("By Popular Demand"),
        nearByButton("By NearBy People"),
      ],
    )),
  );
}



Widget locationButton(String text) {
    return (Container(
        margin: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 500, height: 60),
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(lcolor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
              side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xffa60000), width: 1.0))),
          onPressed: () {
            // print('By Popular Demand Clicked');
                setState(() {
                  initLocationButtonState();
                });
          },
          
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: ltextColor, fontWeight: FontWeight.normal, fontSize: 20),
          ),
        )));
  }

void initLocationButtonState() {
   _filter = "location";
  lcolor = KfilterBorderColors;
  ltextColor = Colors.white;
  popcolor = color;
  poptextColor = Colors.black;
  catcolor = color;
  cattextColor = Colors.black;
  nearcolor = color;
  neartextColor = Colors.black;
}

 Widget categoryButton(String text) {
    return (Container(
        margin: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 500, height: 60),
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(catcolor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
              side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xffa60000), width: 1.0))),
          onPressed: () {
            // print('By Popular Demand Clicked');
            setState(() {
              initCatButtonState();

            });
          },
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: cattextColor, fontWeight: FontWeight.normal, fontSize: 20),
          ),
        )));
  }

 void initCatButtonState() {
    _filter = "category";
   catcolor = KfilterBorderColors;
   cattextColor = Colors.white;
   lcolor = color;
   ltextColor = Colors.black;
   popcolor = color;
   poptextColor = Colors.black;
   nearcolor = color;
   neartextColor = Colors.black;
 }

Widget popularButton(String text) {
    return (Container(
        margin: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 500, height: 60),
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(popcolor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
              side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xffa60000), width: 1.0))),
          onPressed: () {
            // print('By Popular Demand Clicked');
            setState(() {
              initPopularButtonState();
            });
          },
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: poptextColor,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
        )));
  }

void initPopularButtonState() {
  _filter = "popular";
  popcolor = KfilterBorderColors;
  poptextColor = Colors.white;
  catcolor =color;
  cattextColor = Colors.black;
  lcolor = color;
  ltextColor = Colors.black;
  nearcolor = color;
  neartextColor = Colors.black;
}

  Widget nearByButton(String text) {
    return (Container(
        margin: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 500, height: 60),
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(nearcolor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
              side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xffa60000), width: 1.0))),
          onPressed: () {
            // print('By Popular Demand Clicked');
            setState(() {
              initNearByButtonState();
            
            });
          },
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: neartextColor,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
        )));
  }

  void initNearByButtonState() {
     _filter = "nearby";
    nearcolor = KfilterBorderColors;
    neartextColor = Colors.white;
    lcolor = color;
    ltextColor = Colors.black;
    popcolor = color;
    poptextColor = Colors.black;
    catcolor = color;
    cattextColor = Colors.black;
  }
  
}