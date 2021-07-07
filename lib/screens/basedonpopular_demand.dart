import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

import '../constants.dart';

class BasedOnPopularDemand extends StatefulWidget {
  @override
  _BasedOnPopularDemandState createState() => _BasedOnPopularDemandState();
}

class _BasedOnPopularDemandState extends State<BasedOnPopularDemand> {
  String _itemName = "";
  int _itemValue = 0;
  String _country = "";
  String _state = "";
  String _image = "";
  String img = "images/pic.png";
  var color = Colors.white;
  bool _isvisible = false;

  _displayImage() {
    setState(() {
      _itemName = "Gucci";
      _itemValue = 1000;
      _country = "USA";
      _state = "Califonia";
      _image = "images/populardemand4.png";
      color = KProceedColor;
      _isvisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Based On Popular Demand",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              imageGrid(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Visibility(
                    visible: _isvisible,
                    child: Text("Selected Item",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500))),
              ),
              SizedBox(height: 20),
              SelectedItem(),
              SizedBox(
                height: 10,
              ),
              exchangeButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageGrid() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                imageView("images/populardemand1.png"),
                imageView("images/populardemand4.png"),
                imageView("images/populardemand2.png"),
                imageView("images/populardemand1.png"),
                imageView("images/populardemand4.png"),
                imageView("images/populardemand2.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                imageView("images/populardemand1.png"),
                imageView("images/populardemand4.png"),
                imageView("images/populardemand2.png"),
                imageView("images/populardemand1.png"),
                imageView("images/populardemand4.png"),
                imageView("images/populardemand2.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget exchangeButton(BuildContext context) {
    return Visibility(
      visible: _isvisible,
      child: Center(
        child: (Container(
          margin: EdgeInsets.all(10),
          width: 350,
          height: 50,
          child: (ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(KProceedColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
            ),
            onPressed: () {
              print('Proceed clicked');
            },
            child: Text(
              "Exchange with",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )),
        )),
      ),
    );
  }

  Widget imageView(String image) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _displayImage();
        });
      },
      child: Card(
        color: color,
        shadowColor: Colors.black,
        child: Container(
          margin: EdgeInsets.all(5),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints.expand(width: 100, height: 100),
          child: Image.asset(image, fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget SelectedItem() {
    return Visibility(
      visible: _isvisible,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(color: Colors.grey[200]),
                constraints: BoxConstraints.expand(width: 150, height: 150),
                child: Card(
                  child: _image == null
                      ? Image.asset(img, fit: BoxFit.cover)
                      : Image.asset(_image, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              constraints: BoxConstraints.expand(width: 150, height: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Name: $_itemName"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Product Value: $_itemValue"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Country: $_country"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("State: $_state")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
