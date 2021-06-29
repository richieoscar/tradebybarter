import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

import '../constants.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

int _currentPage = 0;

final _controller = PageController(
  initialPage: 0,
);

List<Widget> pageView(BuildContext context) {
  List<Widget> pages = [
    Column(
      children: [
        Container(
          //constraints: BoxConstraints.expand(width: 300, height: 100),
          child: Image.asset(
            "images/onboardscreen-1.png",

          ),
        ),
        SizedBox(height: 50,),
        Text("Exchange your items for another",
            style: KPageViewTextStyle, textAlign: TextAlign.center),
        SizedBox(
          height: 20,
        ),
        Text("Bring your item and get",
            style: KPageViewTextStyle2, textAlign: TextAlign.center),
        SizedBox(
          height: 20,
        ),
        Text("to trade with another trader",
            style: KPageViewTextStyle2, textAlign: TextAlign.center),
        SizedBox(height: 20),
      ],
    ),
    Column(
      children: [
        Image.asset("images/onboardscreen-2.png"),

        Text("Exchange your items for another",
            style: KPageViewTextStyle, textAlign: TextAlign.center),
        SizedBox(
          height: 20,
        ),
        Text("Bring your item and get",
            style: KPageViewTextStyle2, textAlign: TextAlign.center),
        SizedBox(
          height: 20,
        ),
        Text("to trade with another trader",
            style: KPageViewTextStyle2, textAlign: TextAlign.center),
        SizedBox(height: 20),
      ],
    ),
    Column(
      children: [
        Image.asset("images/onboardscreen-3.png"),
        SizedBox(height: 100,),
        Text("Exchange your items for another",
            style: KPageViewTextStyle, textAlign: TextAlign.center),
        SizedBox(
          height: 20,
        ),
        Text("Bring your item and get",
            style: KPageViewTextStyle2, textAlign: TextAlign.center),
        SizedBox(
          height: 20,
        ),
        Text("to trade with another trader",
            style: KPageViewTextStyle2, textAlign: TextAlign.center),
        SizedBox(height: 20),
      ],
    ),
  ];
  return pages;
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: pageView(context),
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
            new DotsIndicator(
              dotsCount: pageView(context).length,
              position: _currentPage.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            Container(
              width: 200,
              child: (OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(KfilterBorderColors ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
                ),
                onPressed: () {
                  print('Proceed clicked');
                  AppNavigator.navigateToWelcomeScreen(context);
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              )),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
