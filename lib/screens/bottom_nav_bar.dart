/*
This is the custom class for the Bottom Navigation Bar
Instantiate class to get the bottom nav bar for ur screen
 */
import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/User.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
import 'package:trade_by_barter/screens/account_screen.dart';
import 'package:trade_by_barter/screens/category_screen.dart';
import 'package:trade_by_barter/screens/homepageScreen.dart';
import 'package:trade_by_barter/screens/notification_screen.dart';
import 'package:trade_by_barter/screens/trade_page_upload.dart';
import 'package:trade_by_barter/screens/trade_screen.dart';

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  //This is the the page that carries all other pages
  Future<User> user;
  int _selectedIndex = 0;
  final navBarLocations = [HomeScreen(), Category(), Pageupload(), NotificationScreen(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBarLocations[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffa60000),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white.withOpacity(.50),
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
  @override
  void initState() {
    super.initState();
   // user = ApiNetworkingManager.loggedInUser(context);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
