import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';

void main() {
  runApp(BarterSuccessScreen());
}

class BarterSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      imageItem("images/success2.png"),
                      SizedBox(
                        height: 20.0,
                      ),
                      barterSuccess(),
                      SizedBox(
                        height: 20.0,
                      ),
                      doneButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Widget for first image
Widget imageItem(String image) {
  return Center(
    child: Image.asset("$image"),
  );
}

//Widget for Barter Success Section
Widget barterSuccess() {
  return Container(
    width: 400.0,
    height: 300.0,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imageItem('images/success1.png'),
                Text(
                  'BARTER SUCCESSFUL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ]),
        ),
      ),
    ),
  );
}

// Done Button
Widget doneButton() {
  return Container(
    width: 350,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(KBrandColors),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        )),
      ),
      child: Text(
        'Done',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    ),
  );
}
