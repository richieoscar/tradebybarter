import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../constants.dart';

class OnBoardScreen extends StatefulWidget{
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();

}

int _currentPage = 0;

final _controller = PageController(
  initialPage: 0,
);

List<Widget> _pages = [
  Column(
    children: [
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

    ],
  ),
  Column(
    children: [
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
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset("images/onboardscreen-3.png")),
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

    ],
  ),
];

class _OnBoardScreenState extends State<OnBoardScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          ),
         ),
          SizedBox(
            height: 20,
          ),
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
            height: 200,
          ),
        ],
      ),
      

    );
  }
}