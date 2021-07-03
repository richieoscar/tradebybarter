import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
import 'package:trade_by_barter/constants.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  var name = "Oscar Anyiam";
  var url = "images/oscar.jpg";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Account",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      body: Column(
        children: [
          profileSection(url, name),
          updateProfile("Update Profile"),
          myCatalogue("My Catalogue"),
          savedItems("Saved Items"),
          settings("Settings"),
          faqs("FAQs"),
        ],
      ),
    ));
  }

  Widget updateProfile(String option) {
    return Center(
      child: Container(
          width: 350,
          height: 50,
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: TextButton(
              child: Text(
                option,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {})),
    );
  }

  Widget myCatalogue(String option) {
    return Center(
      child: Container(
          width: 350,
          height: 50,
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: TextButton(
              child: Text(
                option,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {})),
    );
  }

  Widget savedItems(String option) {
    return Center(
      child: Container(
          width: 350,
          height: 50,
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: TextButton(
              child: Text(
                option,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {})),
    );
  }

  Widget settings(String option) {
    return Center(
      child: Container(
          width: 350,
          height: 50,
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: TextButton(
              child: Text(
                option,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                AppNavigator.navigateToSettingsScreen(context);
              })),
    );
  }

  Widget faqs(String option) {
    return Center(
      child: Container(
          width: 350,
          height: 50,
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: TextButton(
              child: Text(
                option,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                AppNavigator.navigateToFaqScreen(context);
              })),
    );
  }

  Widget profileSection(String imageUrl, String userName) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(url),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 10.0),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Center(
                  child: Text(
                    userName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: KfilterBorderColors,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.circle,
                    color: Colors.green,
                  ),
                ),
              ]),
              SizedBox(height: 10.0),
              Text(
                "Active",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
