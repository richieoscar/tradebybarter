import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Select Category",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            searchBox("Search"),
            SizedBox(height: 10),
            categoryOption("Antiques"),
            categoryOption("Books"),
            categoryOption("Computing"),
            categoryOption("Electronics"),
            categoryOption("Fashion"),
            categoryOption("Health & Beauty"),
            categoryOption("Home Appliances"),
            categoryOption("Office Furnitures"),
          ],
        ),
      ),

      //  bottomNavigationBar: BottomNavBar(),
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
        ));
  }

  Widget searchBox(String label) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xffa60000),
                ),
                hintText: label,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: KProceedColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xFFFCE303),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20.0),
          GestureDetector(
            onTap: ()=> AppNavigator.navigateToFilterScreen(context),
            child: Container(
              width: 50.0,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffa60000), width: 2),
              ),
              child: Icon(Icons.menu, color: KProceedColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryOption(String option) {
    return Center(
      child: Container(
          width: 350,
          height: 50,
          // padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffa60000), width: 1),
          ),
          child: TextButton(
            child: Text(
              option,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: _openSelected,
          )),
    );
  }

  _openSelected() {}
}
