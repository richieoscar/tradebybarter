import 'package:flutter/material.dart';

class BasedOnPopularDemand extends StatefulWidget {
  

  @override
  _BasedOnPopularDemandState createState() => _BasedOnPopularDemandState();
}

class _BasedOnPopularDemandState extends State<BasedOnPopularDemand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }

  Widget imageView (String image){
    return Container(
      constraints: BoxConstraints.expand(width: 100, height:100),
      child:Card(
        child:Image.asset(image, fit:BoxFit.contain),
      ),
    );
  }
}

Widget SelectedItem(String item){
return Container(
  margin: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
      constraints: BoxConstraints.expand(width:150, height: 150),
      child: Card(
        child: Image.asset("", fit:BoxFit.contain),
      ),
    ),
    Container(
      child: Column(
        children[
          Text("Product Name"),
          Text("Product Value"),
          Text("Country: Nigeria"),
          Text("State: Lagos"),
        ],
      ),
    ),
  ],),
);
}