import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../constants.dart';
///This is the stateful widget that the main application instantiates
class OnBoardScreen extends StatefulWidget{
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();

}

int _currentPage = 0;

final _controller = PageController(
  initialPage: 0,
);
///The list of pages on the PageView
List<Widget> _pages = [
  Column(
    children: [
      /*Padding(padding: EdgeInsets.all(20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 373,
              minWidth: 353
          ),
          child: Expanded(
            child: Container(
              child: Image.asset("images/onboardscreen-1.png"),
            ),
          ),
        ),
      ),*/
      Expanded(child: Image.asset("images/onboardscreen-1.png")),
      Text("Exchange your items for another", style: KPageViewTextStyle, textAlign: TextAlign.center),
      SizedBox(
        height: 20,
      ),
      Text("Bring your item and get",style: KPageViewTextStyle2, textAlign: TextAlign.center ),
      SizedBox(
        height: 20,
      ),
      Text("to trade with another trader",style: KPageViewTextStyle2, textAlign: TextAlign.center ),
      SizedBox(
          height: 20
      ),
      Container(
        height: 40,
        width: 100,
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
                print('Skip clicked');
              },
              child: Text("Skip",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            )),
      ),
      SizedBox(
        height: 60,
      ),
    ],
  ),
  Column(
    children: [

    /* ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: 373,
            minWidth: 353
        ),
        child: Expanded(
          child: Container(
            child: Image.asset("images/onboardscreen-3.png"),
          ),
        ),
      ),*/
      Expanded(child: Image.asset("images/onboardscreen-2.png")),
      Text("Exchange your items for another",style: KPageViewTextStyle,textAlign: TextAlign.center ),
      SizedBox(
        height: 20,
      ),
      Text("Bring your item and get",style: KPageViewTextStyle2, textAlign: TextAlign.center ),
      SizedBox(
        height: 20,
      ),
      Text("to trade with another trader",style: KPageViewTextStyle2, textAlign: TextAlign.center ),
      SizedBox(
          height: 20
      ),
      Container(
        height: 40,
        width: 100,
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
                print('Skip clicked');
              },
              child: Text("Skip",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            )),
      ),
      SizedBox(
        height: 60,
      ),
    ],
  ),
  Column(
    children: [
      /*ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 373,
            minWidth: 353

      ),
        child:
        Expanded(
          child: Container(
            child: Image.asset("images/onboardscreen-3.png"),
          ),
        ),
      ),*/
      Container(
        constraints: BoxConstraints.expand(),
        child: Image.asset("images/onboardscreen-3.png"),
      ),
      //Expanded(child: Image.asset("images/onboardscreen-3.png")),
      Text("Exchange your items for another", style: KPageViewTextStyle,textAlign: TextAlign.center ),
      SizedBox(
        height: 20,
      ),
      Text("Bring your item and get",style: KPageViewTextStyle2, textAlign: TextAlign.center ),
      SizedBox(
        height: 20,
      ),
      Text("to trade with another trader",style: KPageViewTextStyle2, textAlign: TextAlign.center ),
      SizedBox(
        height: 20
      ),
      Container(
        height: 40,
        width: 200,
        child: (
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(KBrandColors),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    side: BorderSide(color: Colors.red, width: 20,),
                    borderRadius: BorderRadius.circular(15.0)
                )),

              ),

              onPressed: () {
                print('started clicked');
              },
              child: Text("Let's Get Started",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            )),
      ),
      SizedBox(
        height: 60,
      ),
    ],
  ),
];

class _OnBoardScreenState extends State<OnBoardScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           Expanded(
             child: PageView(
              controller: _controller,
              children: _pages,
               onPageChanged: (index){
                setState(() {
                  _currentPage = index;
                });
               },
              // scrollDirection: Axis.horizontal,
            ),

           ),
            /*SizedBox(
              height: 20,
            ),*/
            new DotsIndicator(
              dotsCount: _pages.length,
              position: _currentPage.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: 100,
            )
            /*Container(
              height: 40,
              width: 100,
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
                      print('Skip clicked');
                    },
                    child: Text("Skip",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  )),
            ),*/
            /*SizedBox(
              height: 60,
            ),*/

          ],
        ),
      ),
      

    );
  }
}