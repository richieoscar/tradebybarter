import 'package:flutter/material.dart';

class AntiquesSreen extends StatefulWidget {
  AntiquesSreen({Key key}) : super(key: key);

  @override
  _AntiquesSreenState createState() => _AntiquesSreenState();
}

class _AntiquesSreenState extends State<AntiquesSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        titleSpacing: 80,
        backgroundColor: Colors.white60,
        title: Text(
          'Antiques',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Antiquesitem(
                label: 'Arts',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Clocks',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Fans',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Furnitures',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Jades',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Jewelleries',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Kitchenwares',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Antiquesitem(
                label: 'Porcelains',
                Onpressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class Antiquesitem extends StatelessWidget {
  const Antiquesitem({
    this.label,
    this.Onpressed,
  });

  final String label;
  final Function Onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpressed,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Color(0xffa60000),
              )),
          height: 45,
          child: Center(
            child: Text(label),
          )),
    );
  }
}
