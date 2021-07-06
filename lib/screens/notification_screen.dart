import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: ListView(children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "You have ",
                                  style: TextStyle(color: Colors.black45)),
                              TextSpan(
                                text: "2 Notifications ",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "today.",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    // margin: EdgeInsets.only(left: 1.0, top: 5.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Today',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          imageSection("images/notification1.png"),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                topSection("Offer Request", "New"),
                              ],
                            ),
                            middleSection("Benjamin Francis ",
                                "wants to barter your  Necklace with Itel 2750."),
                            bottomSection("1hour ago", 'Reject', 'Accept'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  divider(),

                  //Device Location Section
                  Row(
                    children: [
                      Column(
                        children: [
                          imageSection("images/notification2.png"),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                topSection("Device Location", "New"),
                              ],
                            ),
                            secondMiddleSection(
                                "Please turn on your current device location to trade better"),
                            secondBottomSection("1hour ago", "Enable"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  divider(),

                  //Last Seven Days Section - First Notification
                  Container(
                    alignment: Alignment.centerLeft,
                    // margin: EdgeInsets.only(left: 1.0, top: 5.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Last Seven Days',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          imageSection("images/notification1.png"),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                topSection("Refund Request", "Old"),
                              ],
                            ),
                            secondMiddleSection(
                                "Please respond to the refund request sent to you."),
                            secondBottomSection("4 days ago", 'Details'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  divider(),

                  //Last Seven Days Section - Second Notification
                  Row(
                    children: [
                      Column(
                        children: [
                          imageSection("images/notification3.png"),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                topSection("Refund Request", "Old"),
                              ],
                            ),
                            middleSection("Eno Akpan ",
                                "wants to return an item she\'s not satisfied with."),
                            secondBottomSection("4 days ago", 'Details'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  divider(),

                  //Last Seven Days Section - Third Notification
                  Row(
                    children: [
                      Column(
                        children: [
                          imageSection("images/notification4.png"),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                topSection("Offer Request", "Old"),
                              ],
                            ),
                            middleSection("Eniola Badmus ",
                                "wants to barter your Iphone 6 with 2 items."),
                            thirdBottomSection("4 days ago", "Accepted"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// Image Section
Widget imageSection(String imageURL) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Image.asset("$imageURL"),
  );
}

//Top Section
Widget topSection(String title, String status) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 15.0,
      ),
      child: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          '$title',
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {},
          child: Text('$status', style: TextStyle(color: Colors.black)),
        ),
      ])),
    ),
  );
}

//Middle Section with Rich Text Format
Widget middleSection(String name, String otherText) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$name",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "$otherText",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])),
        ),
      ),
    ],
  );
}

//Second Middle Section with normal text format
Widget secondMiddleSection(String text) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                ),
                child: Text("$text"),
              ),
            ),
          ])),
        ),
      ),
    ],
  );
}

//Bottom Section with two buttons, Accept and Reject Buttons
Widget bottomSection(String time, String status, String secondStatus) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 15.0,
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$time",
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          '$status',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        '$secondStatus',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

//Second Bottom Section with one button, Details or Enable Button
Widget secondBottomSection(String time, String title) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 15.0,
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$time",
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '$title',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

//Third Bottom Section without Button
Widget thirdBottomSection(String time, String status) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 15.0,
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$time",
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                  ),
                ),
                Text(
                  "$status",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget divider() {
  return Row(
    children: [
      Expanded(
        child: Container(
          child: Divider(thickness: 2.0),
        ),
      )
    ],
  );
}
