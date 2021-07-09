import 'package:flutter/material.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

class MyItemScreen extends StatefulWidget {
  MyItemScreen({Key key}) : super(key: key);

  @override
  _MyItemScreenState createState() => _MyItemScreenState();
}

class _MyItemScreenState extends State<MyItemScreen> {
  @override
  _proceed() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        titleSpacing: 80,
        backgroundColor: Colors.white60,
        title: Text(
          'My Item',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  MyItemImage(),

                  SizedBox(
                    height: 50,
                  ),
                  ProductInfo(
                    label: 'Product Name: MUL PURSE',
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ProductInfo(
                    label: "Product Value: \$50",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProductInfo(
                    label: 'Product Description',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProductInfo (
                    label: 'Product Condition',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                width: 400.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                  ),
                  onPressed: _proceed(),
                  child: Text(
                    "Barter",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}



class ProductInfo extends StatelessWidget {
  const ProductInfo({this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xffA60000))),
      height: 40,
      child: TextField(
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          fillColor: Color(0xffC4C4C4),
          hintText: label,
          contentPadding: EdgeInsets.only(left: 8, bottom: 16),
          border: InputBorder.none,
        ),
      ),
    );
  }
}


Widget MyItemImage() {
  return Center(
    child: Container(
      width: 200,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(shape: BoxShape.rectangle,
          border: Border.all(color: Color(0xffa60000), width: 3),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(5.0, 5.0),
              blurRadius: 1.0,
              spreadRadius: 2.0,
            ),
          ]),
      child: Image.asset("images/demand3.png",
        fit: BoxFit.contain,
      ),
    ),
  );
}








