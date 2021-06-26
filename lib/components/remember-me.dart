import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/login-model.dart';

class RememberMe extends StatefulWidget {
  final LoginUser user;

  RememberMe({Key key, this.user}) : super(key: key);
  @override
  _State createState() => new _State();
}

class _State extends State<RememberMe> {
  bool _remember = false;
  void _onRememberMeChanged(bool newValue) => setState(() {
        _remember = newValue;
        widget.user.rememberMe = _remember;
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: _remember,
          onChanged: _onRememberMeChanged,
          activeColor: Color.fromRGBO(166, 0, 0, 1),
        ),
        Text(
          "Remember me",
          style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 9.0,
              color: Colors.black),
        )
      ],
    );
  }
}
