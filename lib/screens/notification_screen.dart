import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Page Under Development",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black54,
          ),

        ),
      ),
    );
  }
}
