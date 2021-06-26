import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/login-model.dart';

class TextInputComponent extends StatefulWidget {
  // final Color bgColor;
  final String label;
  final Function validator;
  final LoginUser user;

  const TextInputComponent(
      {Key key, @required this.user, this.label, this.validator})
      : super(key: key);

  @override
  _State createState() => new _State();
}

class _State extends State<TextInputComponent> {
  TextEditingController _controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      widget.user.email = _controller.text;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(
          left: 4,
          top: 8.0,
          bottom: 4.0,
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            fontFamily: "Poppins",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
            color: Color.fromRGBO(172, 163, 163, 1),
          ),
        ),
      ),
      TextFormField(
        cursorColor: Colors.white,
        controller: _controller,
        autovalidateMode: AutovalidateMode.always,
        validator: widget.validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(166, 0, 0, 1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide.none,
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.all(14),
        ),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
        ),
      ),
    ]);
  }
}
