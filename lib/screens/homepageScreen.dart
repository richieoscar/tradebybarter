import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyTestApp());
}

class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test App"),
          backgroundColor: Colors.brown,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(children: [
                Text(
                  'Hi Temilola',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        // controller: controller,
                        // focusNode: focusNode,
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFCE302),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: HexColor("#A60000"),
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: HexColor(
                              ("#A60000"),
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: "Search",
                          contentPadding: const EdgeInsets.only(
                            left: 16,
                            right: 20,
                            top: 14,
                            bottom: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Icon(
                        Icons.menu,
                        color: HexColor("#A60000"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        'Explore Categories',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15.0,
                      ),
                      child: Text(
                        'See All',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color(0xFFA60000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Image.asset('images/cat1.png'),
                              ),
                              Expanded(
                                child: Image.asset('images/cat2.png'),
                              ),
                              Expanded(
                                child: Image.asset('images/cat3.png'),
                              ),
                              Expanded(
                                child: Image.asset('images/cat4.png'),
                              ),
                              Expanded(
                                child: Image.asset('images/cat5.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(child: Image.asset('images/cat6.png')),
                              Expanded(child: Image.asset('images/cat7.png')),
                              Expanded(child: Image.asset('images/cat8.png')),
                              Expanded(child: Image.asset('images/cat9.png')),
                              Expanded(child: Image.asset('images/cat10.png')),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: 200,
                // width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Popular Demand',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'See All',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color(0xFFA60000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                  child: Image.asset('images/demand1.png')),
                              Expanded(
                                  child: Image.asset('images/demand2.png')),
                              Expanded(
                                  child: Image.asset('images/demand3.png')),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: 200,
                // width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Nearby Items',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'See All',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color(0xFFA60000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Image.asset('images/nearby1.png'),
                              ),
                              Expanded(
                                child: Image.asset('images/nearby2.png'),
                              ),
                              Expanded(
                                child: Image.asset('images/nearby3.png'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(children: [
                Text(
                  'Whats New?',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset('images/new1.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'You can now exchange currency with the trade by barter app',
                                        textAlign: TextAlign.justify,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.black, fontSize: 12.0,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: HexColor("#FCE302"),
                                          // padding: EdgeInsets.symmetric(
                                          //     horizontal: 20, vertical: 20),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Learn More'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
