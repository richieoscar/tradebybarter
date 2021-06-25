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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          textTitle("Select Category"),
          SizedBox(height: 20),
          searchBox("Search"),
          SizedBox(height: 20),
          categoryOption("Antiques"),
          SizedBox(height: 20),
          categoryOption("Books"),
          SizedBox(height: 20),
          categoryOption("Computing"),
          SizedBox(height: 20),
          categoryOption("Electronics"),
          SizedBox(height: 20),
          categoryOption("Fashion"),
          SizedBox(height: 20),
          categoryOption("Health & Beauty"),
          SizedBox(height: 20),
          categoryOption("Home Appliances"),
          SizedBox(height: 20),
          categoryOption("Office Furnitures"),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
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
      width: 100.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellowAccent, width: 10),
      ),
      child: Row(
        children: [
          TextField(
            decoration: InputDecoration(
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
          SizedBox(width: 50.0),
          Container(
              width: 50.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffa60000), width: 10),
              ),
              child: Image.asset("images/filter",
              fit: BoxFit.cover,)),
        ],
      ),
    );
  }

  Widget categoryOption(String dropDownVal) {
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffa60000), width: 10),
      ),
      child: dropDown(dropDownVal),
    );
  }

  Widget dropDown(String dropDownValue) {
    return DropdownButton<String>(
      value: dropDownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 10,
      elevation: 10,
      style: const TextStyle(color: Color(0xffa60000),
      ),
      onChanged: (String newValue) {
        setState(() {
          if (newValue != null) dropDownValue = newValue;
        });
      },
      items: <String>['Arts', 'Furniture', 'Artifcats', 'Jewelries']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
