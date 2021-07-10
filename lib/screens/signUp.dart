import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/User.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../constants.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  final _userNameController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();
  String _emailError = "Email is required";
  String _fullNameError = "Full Name Required";
  String _userNameError = "Password Required";
  String _phoneError = "Phone Number Required";
  String _passwordError = "Password is required";
  String _repasswordError = "Password Required";
  bool _visbile = false;
  bool _show = false;

  load() {
    if (_show == false) {
      setState(() {
        _show = true;
      });
    } else {
      setState(() {
        _show = false;
      });
    }
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: Image.asset('images/singup.jpeg'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Full Name',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white)),
                        height: 30,
                        child: TextField(
                          controller: _fullNameController,
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          cursorColor: Colors.black54,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 8, bottom: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _visbile,
                          child: Text(
                            _fullNameError,
                            style:
                                TextStyle(color: KBrandColors, fontSize: 10.0),
                          )),
                      SizedBox(height: 10),
                      Text(
                        'User Name',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white)),
                        height: 30,
                        child: TextField(
                          controller: _userNameController,
                          textInputAction: TextInputAction.done,
                          cursorColor: Colors.black54,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 8, bottom: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _visbile,
                          child: Text(
                            _userNameError,
                            style:
                                TextStyle(color: KBrandColors, fontSize: 10.0),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white)),
                        height: 30,
                        child: TextField(
                          controller: _phoneController,
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          cursorColor: Colors.black54,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 8, bottom: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Visibility(
                          visible: _visbile,
                          child: Text(
                            _phoneError,
                            style:
                                TextStyle(color: KBrandColors, fontSize: 10.0),
                          )),
                      SizedBox(height: 10),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white)),
                        height: 30,
                        child: TextField(
                          controller: _emailController,
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          cursorColor: Colors.black54,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 8, bottom: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _visbile,
                          child: Text(
                            _emailError,
                            style:
                                TextStyle(color: KBrandColors, fontSize: 10.0),
                          )),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white)),
                        height: 30,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          cursorColor: Colors.black54,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 8, bottom: 16),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xfffCE302),
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _visbile,
                          child: Text(
                            _passwordError,
                            style:
                                TextStyle(color: KBrandColors, fontSize: 10.0),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Confirm Password',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white)),
                        height: 30,
                        child: TextField(
                          controller: _rePasswordController,
                          obscureText: _obscureText,
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          cursorColor: Colors.black54,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 8, bottom: 16),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xfffCE302),
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                          visible: _visbile,
                          child: Text(
                            _repasswordError,
                            style:
                                TextStyle(color: KBrandColors, fontSize: 10.0),
                          )),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 250.0,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xffa60000)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text('Sign Up'),
                            onPressed: () {
                              load();
                              var username = _userNameController.text;
                              var fullName = _fullNameController.text;
                              var email = _emailController.text;
                              var phone = _phoneController.text;
                              var password = _passwordController.text;
                              var rePassword = _rePasswordController.text;
                              //validate details
                              if (username.isEmpty) {
                                setState(() {
                                  _visbile = true;
                                  _show = false;
                                });
                                return;
                              }
                              if (fullName.isEmpty) {
                                setState(() {
                                  _visbile = true;
                                  _show = false;
                                });
                                return;
                              }
                              if (email.isEmpty) {
                                setState(() {
                                  _visbile = true;
                                  _show = false;
                                });
                                return;
                              }
                              if (phone.isEmpty) {
                                setState(() {
                                  _visbile = true;
                                  _show = false;
                                });
                                return;
                              }
                              if (password.isEmpty) {
                                setState(() {
                                  _visbile = true;
                                  _show = false;
                                });
                                return;
                              }
                              if (rePassword.isEmpty) {
                                setState(() {
                                  _visbile = true;
                                  _show = false;
                                });
                                return;
                              }

                              User user = User(username, fullName, email, phone,
                                  password, rePassword);
                              _clear();
                              ApiNetworkingManager.signUpUser(user, context)
                                  .whenComplete(() => setState(() {
                                        _show = false;
                                        AppNavigator
                                            .navigateToVerificationScreen(
                                                context);

                                        Fluttertoast.showToast(
                                            msg: "Sign Up Successful",
                                            gravity: ToastGravity.BOTTOM,
                                            textColor: Colors.black,
                                            toastLength: Toast.LENGTH_LONG,
                                            backgroundColor: KProceedColor);
                                      }));

                              // AppNavigator.navigateToSignUpScreen(context);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('I\'m already a member,'),
                            GestureDetector(
                              onTap: () => AppNavigator.navigateBack(context),
                              child: Text(
                                'Sign in',
                                style: TextStyle(color: (Color(0xffA60000))),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      showProgressBar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showProgressBar() {
    return Center(
      child: Visibility(
        visible: _show,
        child: CircularProgressIndicator(
            //color: KfilterBorderColors,
            ),
      ),
    );
  }

  _clear() {
    _userNameController.clear();
    _fullNameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _rePasswordController.clear();
    _phoneController.clear();
  }
}
