import 'package:flutter/material.dart';

import '../constants.dart';
import 'bottom_nav_bar.dart';





//void main() => runApp(const FilterScreen());

/// This is the main application widget.
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        body: Container(
          child: _FilterScreen(),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class _FilterScreen extends StatelessWidget {
  const _FilterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 70),
            Text("Select Filter",style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
            ),
            Expanded(
              child: Container(
                height: 600,
                child: myLayoutWidget(),
              ),
            ),
            Container(
              height: 40,
              width: 200,
              child: (
                  OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(KProceedColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          side: BorderSide(color: Colors.red, width: 20,),
                          borderRadius: BorderRadius.circular(15.0)
                      )),

                    ),

                    onPressed: () {
                      print('Proceed clicked');
                    },
                    child: Text("Proceed",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),

                  )),

            ),

            Container(
              height: 100,
              child: BottomNavBar(),
        ),


          ],
        ),

    ),
    );
  }

 // myLayOutWidget(myLayOutWidget) {}
}
Widget borderRadius( ){
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: Colors.red,
          width: 5,
        )
      //borderRadius: BorderRadius.circular(30.0),
    ),
  );

}

Widget myLayoutWidget() {
  return Container(
    height: 600,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Container(
              height: 20,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  )
                //borderRadius: BorderRadius.circular(30.0),
              ),
              child: (
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(KfilterRectangles),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(color: Colors.red, width: 10,),
                  borderRadius: BorderRadius.circular(15.0),

                )),

                ),

                onPressed: () {
                  print('By Category Clicked');
                },
                child: Text("BY CATEGORY",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20
                  ),
                ),

              )),
            ),
          ),
          ),
        Expanded(
          child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                )
              //borderRadius: BorderRadius.circular(30.0),
            ),
            height: 20,
            width: 300,
            child: (
                OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(KfilterRectangles),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    )),
                  ),

                  onPressed: () {
                    print('By Location Clicked');
                  },
                  child: Text("BY LOCATION",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20
                    ),
                  ),

                )),
          ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(

              height: 20,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  )
                //borderRadius: BorderRadius.circular(30.0),
              ),
              child: (
                  OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(KfilterRectangles),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      )),
                    ),

                    onPressed: () {
                      print('By Popular Demand Clicked');
                    },
                    child: Text("BY POPULAR DEMAND",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),

                  )),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Container(
              height: 20,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  )
                //borderRadius: BorderRadius.circular(30.0),
              ),
              child: (
                  OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(KfilterRectangles),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      )),
                    ),

                    onPressed: () {
                      print('By Nearby People Clicked');
                    },
                    child: Text("BY NEARBY PEOPLE",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20
                    ),),

                  )),
            ),
          ),
        ),

      ],
    ),

  );
}
