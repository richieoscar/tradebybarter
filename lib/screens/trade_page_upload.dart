import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

import '../constants.dart';

class Pageupload extends StatefulWidget {
  Pageupload({Key key}) : super(key: key);
  String _selectedCountry = "";
  String _selectedState = "";
  String _selectedcityValue = "";

  @override
  _PageuploadState createState() => _PageuploadState();
}

class _PageuploadState extends State<Pageupload> {
  String dropdownValue = null;
  var items = ['Clothes', 'Gadgets', 'Automobiles'];
  var _itemNameController = TextEditingController();
  var _priceController = TextEditingController();
  var _categoryController = TextEditingController();
  var _descriptionController = TextEditingController();
  var _authorController = TextEditingController();
  var _itemExchangeController = TextEditingController();
  final _picker = ImagePicker();
  File _imageFile;
  List<File> imageFile = [];

  open() async {
    if (imageFile.length < 5) {
      PickedFile image = await _picker.getImage(source: ImageSource.gallery);
      _handleFile(image);
    }
  }

  _handleFile(PickedFile pickedImage) async {
    if (pickedImage != null) {
      File image = File(pickedImage.path);
      setState(() {
        imageFile.add(image);
      });

      print("image  ${imageFile.length}");
    }
  }

  Widget _display() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            constraints: BoxConstraints.expand(height: 150, width: 150),
            child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Image.file(imageFile[0], fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            constraints: BoxConstraints.expand(height: 150, width: 150),
            child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Image.file(imageFile[1], fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            constraints: BoxConstraints.expand(height: 150, width: 150),
            child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Image.file(imageFile[2], fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            constraints: BoxConstraints.expand(height: 150, width: 150),
            child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Image.file(imageFile[3], fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            constraints: BoxConstraints.expand(height: 150, width: 150),
            child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Image.file(imageFile[4], fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }

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

  _handlePickedFile(PickedFile pickedImage) async {
    if (pickedImage != null) {
      File image = File(pickedImage.path);
      setState(() {
        _imageFile = image;

        print("image path  ${_imageFile.path}");
      });
    }
  }

  _showImagePicker(ccontext) {
    _imageFile = null;

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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
      constraints: BoxConstraints.expand(height: 150, width: 150),
      child: Card(
          elevation: 10,
          margin: EdgeInsets.all(5),
          child: Image.file(_imageFile, fit: BoxFit.cover)),
    );
  }

  Widget button() {
    return GestureDetector(
      onTap: () => _showImagePicker(context),
      child: Container(
        height: 83,
        width: 94,
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Color(0xffA60000))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Icon(
                    Icons.add_circle,
                    color: Color(0xffA60000),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffCA6666),
                          border: Border.all(
                            color: Color(0xffA60000),
                          ),
                        ),
                        child: Center(child: Text('ADD IMAGE')),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Icon(
                        Icons.cancel,
                        color: Color(0xffA60000),
                        size: 20,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Start Trade',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                UploadText('Name of Product', _itemNameController),
                SizedBox(
                  height: 10,
                ),
                UploadText('Item Price', _priceController),
                SizedBox(
                  height: 10,
                ),
                dropDownContainer(context, items, "Select category"),
                SizedBox(
                  height: 10,
                ),
                UploadText('Description', _descriptionController),
                SizedBox(
                  height: 10,
                ),
                UploadText('Item of Exchange', _itemExchangeController),
                SizedBox(
                  height: 10,
                ),
                UploadText('Author', _authorController),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => _showImagePicker(context),
                        child: Text(
                          'Upload on spot selfie with product CLICK HERE',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // button(),
                          _imageFile == null
                              ? _displayNoImageSelected()
                              : _displaySelectedImage()
                        ],
                      ),
                      SizedBox(height: 40),
                      createItem(),
                      SizedBox(
                        height: 10,
                      ),
                      procedToTrade()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createItem() {
    return Container(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )),
          ),
          onPressed: () {
            var itemName = _itemNameController.text;
            var itemDescription = _descriptionController.text;
            var price = _priceController.text;
            var image = _imageFile.path.toString();
            var category = dropdownValue;
            var itemOfexchange = _itemExchangeController.text;
            var author = _authorController.text;
            print(
                "$itemName \n $itemDescription \n $price \n $category \n $itemOfexchange \n $author \n $image");
            if (itemName.isEmpty ||
                itemDescription.isEmpty ||
                price.isEmpty ||
                category.isEmpty ||
                itemOfexchange.isEmpty ||
                author.isEmpty ||
                image == null) {
              Fluttertoast.showToast(
                  msg: "Please All Information must Be Provided",
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.black,
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: KProceedColor);
              return;
            }
            Item item = Item(itemName, int.parse(price), category,
                itemDescription, itemOfexchange, image, int.parse(author));
            ApiNetworkingManager.createItem2(item, context).whenComplete(() {
              Fluttertoast.showToast(
                  msg: "Item Created Successfully",
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.black,
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: KProceedColor);
              clear();
            });
          },
          child: Text(
            "Create Item",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget procedToTrade() {
    return Container(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
            ),
            onPressed: () {
              AppNavigator.navigateToTradeList(context);
            },
            child: Text(
              "Proceed To Trade",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }

  Container dropDownContainer(
      BuildContext context, List<String> dropDownItems, String hintText) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xffA60000))),
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text(hintText),
          value: dropdownValue,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black87,
          ),
          iconSize: 20,
          elevation: 8,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  void clear() {
    _itemNameController.text = "";
    _priceController.text = "";
    _descriptionController.text = "";
    _itemExchangeController.text = "";
    _authorController.text = "";
    _imageFile = null;
  }
}

class UploadText extends StatelessWidget {
  String label;
  TextEditingController _controller;

  UploadText(this.label, this._controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xffA60000))),
      height: 40,
      child: TextField(
        controller: _controller,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          fillColor: Color(0xffC4C4C4),
          hintText: label,
          contentPadding: EdgeInsets.only(left: 8, bottom: 16),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class Upload extends StatelessWidget {
  final String label1;
  const Upload({this.label1});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppNavigator.navigateToAddPhotoScreen(context),
      child: Container(
        height: 83,
        width: 94,
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Color(0xffA60000))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Icon(
                    Icons.add_circle,
                    color: Color(0xffA60000),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffCA6666),
                          border: Border.all(
                            color: Color(0xffA60000),
                          ),
                        ),
                        child: Center(child: Text('ADD IMAGE')),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Icon(
                        Icons.cancel,
                        color: Color(0xffA60000),
                        size: 20,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
