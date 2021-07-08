import 'package:flutter/material.dart';

class ComputingScreen extends StatefulWidget {
  ComputingScreen({Key key}) : super(key: key);

  @override
  _ComputingScreenState createState() => _ComputingScreenState();
}

class _ComputingScreenState extends State<ComputingScreen> {
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
          'Computing',
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
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'Adapters',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'Batteries',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'Computers & Laptops',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'Drives',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'Laptop Cases and Bags',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem (
                    label: 'USB Hubs',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'VGA Cables',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _ComputingItem(
                    label: 'Webcams',
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

class _ComputingItem extends StatelessWidget {
  const _ComputingItem({
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
