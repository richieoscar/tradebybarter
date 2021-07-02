import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key key}) : super(key: key);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Enter your code',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Enter the code we sent to you',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: PinCodeTextField(
                  appContext: context,
                  length: 5,
                  onChanged: (value) {
                    print(value);
                  },
                  enableActiveFill: true,
                  showCursor: false,
                  pinTheme: PinTheme(
                      inactiveFillColor: Colors.grey[100],
                      selectedFillColor: Colors.grey[100],
                      activeFillColor: Colors.grey[100],
                      activeColor: Color(0xFFA60000),
                      inactiveColor: Colors.grey[200],
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      borderRadius: BorderRadius.circular(5.0),
                      selectedColor: Colors.amberAccent),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFA60000)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Click here to resend',
                  style: TextStyle(
                    color: Colors.amberAccent,
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
