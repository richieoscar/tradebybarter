import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_by_barter/navigation/navigation.dart';

import '../constants.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => AppNavigator.navigateBack(context),
            ),
            elevation: 0.0,
            backgroundColor: Colors.grey[200],
        ),
      backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Center(child:
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/camera.jpeg"),

                    )
                  ),
                  SizedBox(height: 20),
                  Center(child: Text("You can add up to 5(five) photos.")),
                  SizedBox(height: 20),
                  Center(child: addPhotoButton(context)),
                  SizedBox(height: 40),
                  formLayout()
                ],
              ),

            ),
          ),
        ));
  }

  Widget formLayout(){
    return  Center(
      child: (
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                      "Product Name",
                      textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w300
                  ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black12)),
                    height: 40,
                    child: TextField(
                      maxLines: null,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: 8, bottom: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Product Value", textAlign: TextAlign.start, style: TextStyle(
                      fontWeight: FontWeight.w300
                  ),),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black12)),
                    height: 40,
                    child: TextField(
                      maxLines: null,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: 8, bottom: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Description", textAlign: TextAlign.start,
                      style: TextStyle(
                      fontWeight: FontWeight.w300
                  ),),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black12)),
                    height: 80,
                    child: TextField(
                      maxLines: null,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: 8, bottom: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  button(context),
                  SizedBox(height: 40.0),
                ],
              ),
            ),

        )
      ),
    );
  }

  Widget button(BuildContext context) {
    return (
        Container(
          margin: EdgeInsets.all(10),
          width: 330,
          height: 50,
          child: (ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(KProceedColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
            ),
            onPressed: () {
              print('Proceed clicked');
            },
            child: Text(
              "Proceed",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          )),
        )
    );
  }

  Widget addPhotoButton(BuildContext context) {
    return (
        Container(
          margin: EdgeInsets.all(10),
          width: 200,
          child: (ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
            ),
            onPressed: () {
              print('Proceed clicked');
            },
            child: Text(
              "+Add Photos",
              style: TextStyle(
                  color: KfilterBorderColors,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          )),
        )
    );
  }
}
