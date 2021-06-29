import 'package:flutter/material.dart';
import 'package:trade_by_barter/constants.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        child: (OutlinedButton(
          style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(KfilterBorderColors),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0))),
          ),
          onPressed: () {
            print('Proceed clicked');
            ApiNetworkingManager.logOut(context);
          },
          child: Text(
            "Logout",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        )),
      ),
    );
  }
}
