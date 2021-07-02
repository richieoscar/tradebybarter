import 'package:flutter/material.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  final userNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
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
                          controller: userNameController,
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
                        height: 10,
                      ),
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
                          controller: firstNameController,
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
                          controller: lastNameController,
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
                          controller: emailController,
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
                        height: 10,
                      ),
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
                          controller: passwordController,
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
                          controller: rePasswordController,
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
                        height: 20,
                      ),
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
                              var userName = userNameController.text;
                              var firstName = firstNameController.text;
                              var lastName = lastNameController.text;
                              var email = emailController.text;
                              var phone = phoneController.text;
                              var password = passwordController.text;
                              var rePassword = rePasswordController.text;
                              ApiNetworkingManager.signUpUser(
                                  userName,
                                  firstName,
                                  lastName,
                                  email,
                                  phone,
                                  password,
                                  rePassword,
                                  context);

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
                            Text(
                              'Sign in',
                              style: TextStyle(color: (Color(0xffA60000))),
                            )
                          ],
                        ),
                      )
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
}
