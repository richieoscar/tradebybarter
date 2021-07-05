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
    Container(
      decoration: BoxDecoration(color: Colors.white),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/onb1.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 320,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Barter Your Unneeded Items Instantly.",
                    style: KPageViewTextStyle, textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Swap your items and",
                  style: KPageViewTextStyle2, textAlign: TextAlign.center),
              SizedBox(
                height: 20,
              ),
              Text("meet your real time needs",
                  style: KPageViewTextStyle2, textAlign: TextAlign.center),
              SizedBox(height: 100),
              Container(
                width: 100,
                child: Container(
                  margin: EdgeInsets.all(8),
                  constraints: BoxConstraints.expand(height: 30),
                  child: (OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(KProceedColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    ),
                    onPressed: () {
                      print('skip clicked');
                      AppNavigator.navigateToWelcomeScreen(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(color: Colors.white),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/onb2.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 320,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Get Equal Value of Your Items.",
                    style: KPageViewTextStyle, textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Exchange your items for",
                  style: KPageViewTextStyle2, textAlign: TextAlign.center),
              SizedBox(
                height: 20,
              ),
              Text("commensurate alternatives.",
                  style: KPageViewTextStyle2, textAlign: TextAlign.center),
              SizedBox(height: 100),
              Container(
                width: 100,
                child: Container(
                  margin: EdgeInsets.all(8),
                  constraints: BoxConstraints.expand(height: 30),
                  child: (OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(KProceedColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    ),
                    onPressed: () {
                      print('skip clicked');
                      AppNavigator.navigateToWelcomeScreen(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(color: Colors.white),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/onb3.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 320,
              ),
              Text("Barter with Ease.",
                  style: KPageViewTextStyle, textAlign: TextAlign.center),
              SizedBox(
                height: 20,
              ),
              Text("Login to trade conveniently,",
                  style: KPageViewTextStyle2, textAlign: TextAlign.center),
              SizedBox(
                height: 20,
              ),
              Text("fast and secured",
                  style: KPageViewTextStyle2, textAlign: TextAlign.center),
              SizedBox(height: 100),
              Container(
                width: 200,
                child: (OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(KProceedColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                  ),
                  onPressed: () {
                    print('Proceed clicked');
                    AppNavigator.navigateToWelcomeScreen(context);
                  },
                  child: Text(
                    "Let's Get Started!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    ),
  ];
  return pages;
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
            Container(
              decoration: BoxDecoration(color: Colors.white),
              alignment: Alignment(0.0, -1.0),
              child: new DotsIndicator(
                dotsCount: pageView(context).length,
                position: _currentPage.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
