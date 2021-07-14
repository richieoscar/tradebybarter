import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/models/User.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _username = "Hi User";
  Future<User> user = ApiNetworkingManager.loggedInUser();

  Widget greetUser(){
    return Container(
      child:FutureBuilder<User> (future: user, builder: (context, snapshot){
        if (snapshot.hasData){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hi ${snapshot.data.username}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          );
        }
        else{
          return Text("Hi");
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // user = ApiNetworkingManager.loggedInUser(context);
    return SafeArea(
      child: Container(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              left: 10.0,
            ),
            child: Row(children: [
              greetUser(),
            ]),
          ),
          SearchWidget(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                    child: GestureDetector(
                      onTap: () =>
                          AppNavigator.navigateToCategoryScreen(context),
                      child: Text(
                        'See All',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: KBrandColors,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ExploreCategoriesWidget(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                    child: GestureDetector(
                      onTap: ()=> AppNavigator.navigateToPopularDemandScreen(context),
                      child: Text(
                        'See All',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color(0xFFA60000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PopularDemandWidget(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                    child: GestureDetector(
                      onTap: () =>
                          AppNavigator.navigateToNearByPeopleScreen(context),
                      child: Text(
                        'See All',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: KBrandColors,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          NearbyItemsWIdget(),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              left: 10.0,
            ),
            child: Row(children: [
              Text(
                'What\'s New?',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          WhatsNewWidget(),
        ]),
      ),
    );
  }

  String displayUsername() {
    String userName;
    FutureBuilder<User>(
      future: user,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          userName = snapshot.data.username;
        } else if (snapshot.hasError) {
          userName = snapshot.error;
        }
      },
    );
    return userName;
  }
}

//Search Section
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
        left: 10.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: KProceedColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: KBrandColors,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: KBrandColors,
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
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 10.0,
            ),
            child: GestureDetector(
              onTap: () => AppNavigator.navigateToFilterScreen(context),
              child: Container(
                // margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: KBrandColors,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Icon(
                  Icons.menu,
                  color: KProceedColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Explore Categories Section
class ExploreCategoriesWidget extends StatelessWidget {
  const ExploreCategoriesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: 150.0,
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
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
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
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
    );
  }
}

//Popular Demand Section
class PopularDemandWidget extends StatelessWidget {
  const PopularDemandWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Expanded(child: Image.asset('images/demand1.png')),
                    Expanded(child: Image.asset('images/demand2.png')),
                    Expanded(child: Image.asset('images/demand3.png')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Nearby Items Section
class NearbyItemsWIdget extends StatelessWidget {
  const NearbyItemsWIdget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

//What's New Section
class WhatsNewWidget extends StatelessWidget {
  const WhatsNewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 1.0, top: 5.0),
                              child: Text(
                                'You can now exchange currency with the trade by barter app',
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 1.0, top: 5.0),
                              child: Text(
                                'Learn More',
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: KProceedColor,
                                  fontSize: 15.0,
                                ),
                              ),
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
    );
  }
}
