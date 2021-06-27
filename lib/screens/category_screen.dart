import 'package:flutter/material.dart';
import 'package:trade_by_barter/screens/bottom_nav_bar.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 50),
              textTitle("Select Category"),
              SizedBox(height: 30),
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
    return Center(
      child: Container(
        height: 60,
       margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: [
            Expanded(
              child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: Color(0xffa60000)),
               ),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      //borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xffa60000),
                    ),
                    hintText: label,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Container(
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffa60000), width: 2),
                ),
                child: Image.asset(
                  "images/filter.png",
                  fit: BoxFit.contain,
                )),
          ],
        ),
      ),
    );
  }

  Widget categoryOption(String option) {
    return Center(
      child:  Container(
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

  _openSelected(){

  }
}
