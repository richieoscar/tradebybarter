import 'package:flutter/material.dart';
import 'package:csc_picker/csc_picker.dart';

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
                  height: 40,
                ),
                UploadText(
                  label: 'Name of Product',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Upload(),
                    SizedBox(
                      width: 10,
                    ),
                    Upload(),
                    SizedBox(
                      width: 10,
                    ),
                    Upload()
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                UploadText(
                  label: 'Product Value/Description:',
                ),
                SizedBox(
                  height: 10,
                ),
                UploadText(
                  label: 'Preferred Item of Exchange',
                ),
                SizedBox(
                  height: 10,
                ),
                dropDownContainer(context, items, 'Select Category:'),
                SizedBox(
                  height: 10,
                ),
                CSCPicker(
                  showStates: true,
                  showCities: true,
                  layout: Layout.vertical,

                  flagState: CountryFlag.DISABLE,
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey,
                      border: Border.all(color: Color(0xffa60000), width: 1)),

                  ///selected item style [OPTIONAL PARAMETER]
                  selectedItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                  dropdownHeadingStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),

                  ///DropdownDialog Item style [OPTIONAL PARAMETER]
                  dropdownItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///Dialog box radius [OPTIONAL PARAMETER]
                  dropdownDialogRadius: 0.0,

                  ///Search bar radius [OPTIONAL PARAMETER]
                  searchBarRadius: 10.0,

                  ///Default Country [OPTIONAL PARAMETER]

                  ///triggers once country selected in dropdown
                  onCountryChanged: (value) {
                    setState(() {
                      ///store value in country variable
                      var _selectedCountry = value;
                    });
                  },

                  ///triggers once state selected in dropdown
                  onStateChanged: (value) {
                    setState(() {
                      ///store value in state variable
                      var _selectedState = value;
                    });
                  },

                  ///triggers once city selected in dropdown
                  onCityChanged: (value) {
                    setState(() {
                      ///store value in city variable
                      var _selectedcityValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                UploadText(
                  label: 'Address',
                ),
                SizedBox(
                  height: 10,
                ),
                UploadText(
                  label: 'Phone Number:',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Upload Verification Video',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Upload(),
                    SizedBox(
                      width: 10,
                    ),
                    Upload(),
                    SizedBox(
                      width: 10,
                    ),
                    Upload()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container dropDownContainer(
      BuildContext context, List<String> dropDownItems, String hintText) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xffA60000))),
      height: 40,
      child: DropdownButton<String>(
        hint: Text(hintText),
        value: dropdownValue,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xffA60000),
        ),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Color(0xffA60000)),
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
    );
  }
}

class UploadText extends StatelessWidget {
  const UploadText({this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xffA60000))),
      height: 40,
      child: TextField(
        textInputAction: TextInputAction.done,
        autofocus: true,
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
  const Upload({this.label1});
  final String label1;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Icons.add_a_photo_sharp,
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
    );
  }
}
