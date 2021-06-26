import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/login-model.dart';
import '../helpers/validators.dart';

class PasswordInputComponent extends StatefulWidget {
  final String label;
  final LoginUser user;

  const PasswordInputComponent(
      {Key key, @required this.user, @required this.label})
      : super(key: key);

  @override
  _PasswordInputComponent createState() => new _PasswordInputComponent();
}

class _PasswordInputComponent extends State<PasswordInputComponent> {
  final TextEditingController _controller = new TextEditingController();

  bool _showPassword = false;

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        margin: EdgeInsets.only(left: 4, top: 8.0, bottom: 4.0,),
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
        autovalidateMode: AutovalidateMode.always,
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty || value.length < 8) {
            return null;
          }
          if (!Validator.passwordValidator(value)) {
            return "Password should have uppercase, lowercase, digit and special character";
          }
        },
        controller: _controller,
        cursorColor: Colors.white,
        obscureText: !_showPassword,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 9),
          filled: true,
          fillColor: Color.fromRGBO(255, 227, 3, 1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide.none,
          ),
          errorBorder: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () => {setState(() => _showPassword = !_showPassword)},
            child: Icon(
              _showPassword ? Icons.visibility : Icons.visibility_off,
              color: Color.fromRGBO(166, 0, 0, 1),
            ),
          ),
        ),
      ),
    ]);
  }
}
