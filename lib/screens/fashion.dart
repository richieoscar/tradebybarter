import 'package:flutter/material.dart';

class FashionScreen extends StatefulWidget {
  FashionScreen({Key key}) : super(key: key);

  @override
  _FashionScreenState createState() => _FashionScreenState();
}

class _FashionScreenState extends State<FashionScreen> {
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
        centerTitle: true,
        backgroundColor: Colors.white60,
        title: Text(
          'Fashion',
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
              Fashionitem(
                label: 'Bags',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Fashionitem(
                label: 'Clothings',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Fashionitem(
                label: 'Clothing Accessories',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Fashionitem(
                label: 'Jewelleries',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Fashionitem(
                label: 'Shoes',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Fashionitem(
                label: 'Watches',
                Onpressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class Fashionitem extends StatelessWidget {
  const Fashionitem({
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
