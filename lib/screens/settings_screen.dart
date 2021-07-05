import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => AppNavigator.navigateBack(context),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Settings",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      body: Container(
        child: Column(
          children: [
            profileSettings(),
            notificationSettings(),
            clearCache(),
            reportBug(),
            termsOfUse(),
            privacyPolicy(),
            about(),
            SizedBox(height: 30),
            
          ],
        ),
      ),
    );
  }

 
}

Widget profileSettings() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Profile',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget notificationSettings() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notification Settings',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget clearCache() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Clear Cache',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget reportBug() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Report Bug',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget termsOfUse() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Terms Of Use',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget privacyPolicy() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Privacy Policy',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget about() {
  return InkWell(
    child: Center(
      child: Card(
        child: Container(
          width: 350,
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About Trade by Barter',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              // SizedBox(
              //   width: 130,
              // ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: KfilterBorderColors,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}
