import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  final _picker = ImagePicker();
  File _imageFile;
  SharedPreferences imagefile;

  _openGallery() async {
    if (_imageFile == null) {
      PickedFile image = await _picker.getImage(source: ImageSource.gallery);
      _handlePickedFile(image);
    }
  }

  _openCamera() async {
    if (_imageFile == null) {
      PickedFile image = await _picker.getImage(source: ImageSource.camera);
      _handlePickedFile(image);
    }
  }

  _handlePickedFile(PickedFile pickedImage)async {
    if (pickedImage != null) {
      File image = File(pickedImage.path);
      setState(() async {
        _imageFile = image;
        imagefile = await SharedPreferences.getInstance();
        imagefile.setString("file", _imageFile.path);

      });
    }
  }

  _showImagePicker(ccontext) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext ctx) {
          return SafeArea(
              child: Container(
            child: Wrap(
              children: [
                ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text("Pick From Library"),
                    onTap: () {
                      _openGallery();
                      AppNavigator.navigateBack(context);
                    }),
                Container(
                  color: KBrandColors,
                  child: ListTile(
                    leading: Icon(Icons.photo_camera, color: Colors.white),
                    title: Text("Take A Photo",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openCamera();
                      AppNavigator.navigateBack(context);
                    },
                  ),
                ),
              ],
            ),
          ));
        });
  }

  Widget _displayNoImageSelected() {
    return CircleAvatar(
      radius: 50,
      child: Image.asset("images/camera.jpeg"),
    );
  }

  Widget _displaySelectedImage() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      constraints: BoxConstraints.expand(height: 200, width: 200),
      child: Image.file(_imageFile, fit: BoxFit.fill),
  
    );
  }

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
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: _imageFile == null
                        ? _displayNoImageSelected()
                        : _displaySelectedImage(),
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

  Widget formLayout() {
    return Center(
      child: (Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48), topRight: Radius.circular(48))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Product Name",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.w300),
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
                    contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Product Value",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.w300),
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
                    contentPadding: EdgeInsets.only(left: 8, bottom: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Description",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
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
                    contentPadding: EdgeInsets.only(left: 8, bottom: 16),
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
      )),
    );
  }

  Widget button(BuildContext context) {
    return (Container(
      margin: EdgeInsets.all(10),
      width: 330,
      height: 50,
      child: (ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(KProceedColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
        ),
        onPressed: () {
          print('Proceed clicked');
        },
        child: Text(
          "Proceed",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      )),
    ));
  }

  Widget addPhotoButton(BuildContext context) {
    return (Container(
      margin: EdgeInsets.all(10),
      width: 200,
      child: (ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
        ),
        onPressed: () {
          print('Proceed clicked');
          _showImagePicker(context);
        },
        child: Text(
          "+Add Photos",
          style: TextStyle(
              color: KfilterBorderColors,
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
      )),
    ));
  }
}
